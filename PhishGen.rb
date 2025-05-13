$companies = ["Google","Amazon","Netflix","Roblox"]
$issues = ["Support","Finance","Alert","Verify"]

$slds = {
  "Google" => ["gooogle", "go0gle", "g00gle", "g00gle", "gogle", "goog1e", "googl3"],
  "Amazon" => ["amaz0n", "amazoon", "amzon", "amozon", "amazn", "amizon"],
  "Netflix" => ["neflix", "neftlix", "netfl1x", "netf1ix", "netfllx"],
  "Roblox" => ["rob0x", "rob1ox", "r0blox", "r0bl0x", "r0b10x"]
}

$tlds =["com","org","us","uk","ru","net","xyz","biz","io"]

$lcls = {
    "Support" => ["support", "service", "supp0rt"],
    "Finance" => ["billing","payment"],
    "Alert" => ["security","alert","issues"],
    "Verify" => ["login","verify","account","register"]
}

$sbj = {
    "Support" => ["Your Account Recovery Request Has Been Received", "Account Locked: Contact Support to Restore Access", "Support Alert: We Need Additional Information to Process Your Request","Urgent: Resolve Issues with Your Account Support Ticket","Support Notice: Your Password Has Been Reset Successfully"],
    "Finance" => ["Payment Declined: Update Your Billing Information Immediately","Immediate Attention Needed: Your Credit Card Has Been Blocked","Your Recent Payment Failed – Update Your Information Here","Urgent: Verify Your Banking Information to Avoid Account Suspension","Overdue Payment Reminder: Settle Your Outstanding Balance Today","Your Account Statement is Ready – View and Verify Now"],
    "Alert" => ["Security Alert: Suspicious Login Attempt on Your Account","Important Notice: Your Account Will Be Locked in 24 Hours","We’ve Detected an Issue with Your Account – Contact Support"],
    "Verify" => ["Your Account Has Been Temporarily Suspended – Verify Your Identity Now","Account Verification Required: Confirm Your Details to Prevent Fraud","Support: Your Account Verification is Pending","Final Reminder: Verify Your Details to Prevent Account Lock"]
}

$bdy = {
    "Support" => ["Hello,<br><br>Your recent account support request has been processed. Please confirm your account information by clicking the link below:<br><br>[malicious link]<br><br>Failure to do so may result in account suspension.<br><br>Best regards,<br>Support Team", "Dear Valued Customer,<br><br>We have received a request to reset your password. If this was not you, please secure your account by verifying your information:<br><br>[malicious link]<br><br>Thank you,<br>Support Team","Dear User,<br><br>We detected a problem processing your recent support request. Please confirm your account information to proceed:<br><br>[malicious link]<br><br>Sincerely,<br>Support Team"],
    "Finance" => [ "Hello,<br><br>Your recent payment was declined due to outdated billing information. Please update your payment details to avoid service disruption.<br><br>Update Payment Information: [malicious link]<br><br>Best regards,<br>Billing Department","Hi [User],<br><br>We have detected suspicious activity on your account and need to verify your details. Please take action immediately.<br><br>Verify Now: [malicious link]<br><br>Best,<br>Fraud Prevention Department", "Dear Valued Client,<br><br>We have temporarily suspended your account due to multiple failed login attempts. Please confirm your account information to restore access.<br><br>Confirm My Account: [malicious link]<br><br>Thank you,<br>Security Team","Dear Client,<br><br>We detected an issue with your recent payment. Please confirm your billing details to avoid late fees.<br><br>Confirm Payment Details: [malicious link]<br><br>Best regards,<br>Billing Support"],
    "Alert" => ["Dear Customer,<br><br>We noticed some unusual activity in your account. Please verify your account details immediately to avoid service interruption.<br><br>Click here to verify: [malicious link]<br><br>Thank you,<br>Support Team","Dear User,<br><br>Our security team has identified unauthorized access attempts on your account. We strongly recommend that you update your account information as soon as possible.<br><br>Update your account here: [malicious link]<br><br>Regards,<br>Support Team", "Hello,<br><br>Your account is flagged for unusual behavior. To resolve this issue and restore full access, please follow the instructions below:<br><br>[malicious link]<br><br>Regards,<br>Support Team"],
    "Verify" => [  "Hello,<br><br>To continue using our services, please update your account details within 24 hours. Failure to do so may lead to account suspension.<br><br>Update now: [malicious link]<br><br>Thank you for your prompt attention.<br>Support Team","Dear Customer,<br><br>Your account is scheduled for deactivation due to incomplete information. Please verify your details to keep your account active.<br><br>Verify Now: [malicious link]<br><br>Best,<br>Support Team", "Hello,<br><br>Your account requires urgent verification to maintain service. Failure to act may result in your account being suspended.<br><br>Verify Now: [malicious link]<br><br>Best,<br>Support Team", "Dear Valued Customer,<br><br>Your recent account update request has failed. Please verify your information to complete the process:<br><br>[malicious link]<br><br>Thank you,<br>Support Team"]
}

def generate_email
  issue = $issues.sample
  company = $companies.sample
  {
    address: generate_email_address(issue, company),
    subject: generate_subject(issue),
    text: generate_text(issue)
  }
end


def generate_email_address(issue, company)
  "#{$lcls[issue].sample}@#{$slds[company].sample}.#{$tlds.sample}"
end

def generate_subject(issue)
  $sbj[issue].sample
end

def generate_text(issue)
  $bdy[issue].sample
end

email = generate_email
pp email
