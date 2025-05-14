COMPANIES = ["Google","Amazon","Netflix","Roblox"]
ISSUES = ["Support","Finance","Alert","Verify"]

SLDS = {
    "Google" => ["google"],
    "Amazon" => ["amazon"],
    "Netflix" => ["netflix"],
    "Roblox" => ["roblox"]
}

TLDS = ["com", "co.uk"]

LCLS = {
    "Support" => ["support", "service"],
    "Finance" => ["billing", "payment"],
    "Alert" => ["security", "alert", "notifications"],
    "Verify" => ["login", "verify", "account", "register"]
}

SBJ = {
    "Support" => [
        "Your Account Recovery Request Has Been Received",
        "Account Locked: Contact Support to Restore Access",
        "Support Alert: We Need Additional Information to Process Your Request",
        "Notification: Your Password Has Been Reset Successfully"
    ],
    "Finance" => [
        "Payment Confirmation: Your Recent Transaction was Successful",
        "Your Billing Information Has Been Updated",
        "Payment Received – Thank You for Your Purchase",
        "Account Statement Ready: View Your Monthly Summary"
    ],
    "Alert" => [
        "Security Alert: New Login from an Unrecognized Device",
        "Important Notice: Please Review Recent Activity on Your Account",
        "We’ve Detected a New Device on Your Account"
    ],
    "Verify" => [
        "Please Verify Your Identity to Continue Using Your Account",
        "Account Verification Required: Confirm Your Details",
        "Action Needed: Confirm Your Information to Complete Your Registration"
    ]
}

BDY = {
    "Support" => [
        "Hello,<br><br>Your recent support request has been received. Our team is working on it, and we will get back to you shortly with further instructions.<br><br>Best regards,<br>Support Team",
        "Dear Valued Customer,<br><br>We have processed your request to reset your password. If this was not you, please contact our support team immediately.<br><br>Thank you,<br>Support Team",
        "Dear User,<br><br>We detected an issue processing your recent request. Please contact our support team if you need further assistance.<br><br>Sincerely,<br>Support Team"],
        
    "Finance" => [
        "Hello,<br><br>We are pleased to inform you that your recent payment was processed successfully. You can view your updated billing details in your account.<br><br>Best regards,<br>Billing Department",
        "Hi [User],<br><br>We have updated your billing information as requested. If you did not make this change, please contact our support team immediately.<br><br>Best regards,<br>Billing Team",
        "Dear Valued Client,<br><br>Your payment for this month has been successfully processed. Thank you for staying with us!<br><br>Best regards,<br>Finance Team",
        "Dear Client,<br><br>Your recent transaction was completed successfully. Please find the invoice attached to this email.<br><br>Best regards,<br>Billing Support"],

    "Alert" => [
        "Dear Customer,<br><br>We noticed a login from a new device on your account. If this was not you, please update your account security settings immediately.<br><br>Thank you,<br>Security Team",
        "Dear User,<br><br>Our security team detected a new device accessing your account. If you recognize this activity, no further action is required. Otherwise, please secure your account immediately.<br><br>Best regards,<br>Security Team",
        "Hello,<br><br>We’ve identified new activity on your account that may require your attention. Please review it and update your settings if necessary.<br><br>Best regards,<br>Support Team"],

    "Verify" => [
        "Hello,<br><br>Please verify your account information to continue enjoying our services. This helps us keep your account secure and up to date.<br><br>Thank you,<br>Support Team",
        "Dear Customer,<br><br>To complete your registration, we need to verify your identity. Please follow the instructions sent to your registered email address.<br><br>Best,<br>Support Team",
        "Hello,<br><br>Your account requires verification to continue using our services. Please take a moment to confirm your details.<br><br>Thank you,<br>Support Team",
        "Dear Valued Customer,<br><br>Your recent account update was successful. If you have any further queries, please don’t hesitate to reach out to our support team.<br><br>Thank you,<br>Support Team"]

}
module LegitGen
    def self.generate_email
    issue = ISSUES.sample
    company = COMPANIES.sample
    {
        address: generate_email_address(issue, company),
        subject: generate_subject(issue),
        text: generate_text(issue)
    }
    end


    def self.generate_email_address(issue, company)
    "#{LCLS[issue].sample}@#{SLDS[company].sample}.#{TLDS.sample}"
    end

    def self.generate_subject(issue)
    SBJ[issue].sample
    end

    def self.generate_text(issue)
    BDY[issue].sample
    end
end
