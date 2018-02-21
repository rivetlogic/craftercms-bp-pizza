import scripts.utils.MailHelper

import org.craftercms.engine.exception.HttpStatusCodeException

def contextURL = "/site/website${ params.contextURL ?: "" }/index.xml"
def contextSite = siteItemService.getSiteItem(contextURL)

def toMails = getToMails(contextSite);

def fromEmail = params.email
def name = params.name
def subject = params.subject
def message = params.message


if (!fromEmail) {
    throw new HttpStatusCodeException(400, "Bad request: missing email")
} else if (!name) {
    throw new HttpStatusCodeException(400, "Bad request: missing name")
}  else if (!message) {
    throw new HttpStatusCodeException(400, "Bad request: missing message")
}

//def mailHelper = new MailHelper(siteContext.freeMarkerConfig.configuration);
//mailHelper.sendEmail(fromEmail, toMails, "${name} contacted you", "\n Subject: ${subject}" ," \n ${message}");

println "Processing Contact Us Request with values:"
println params

return [success: true];
//return [cointextSite: contextSite];

def getToMails(contextSite){
    def toMails = contextSite.get('contactEmails/item/email');
    if ( toMails in List ) {
        def tempArray = new String[toMails.size()];
        for(ii=0; ii< toMails.size(); ii++){
            tempArray[ii] = toMails.get(ii).getText();
        }
        toMails = tempArray;
        //for()
    } else {
        toMails = (String[])[ toMails ];
    }
    return toMails;
}