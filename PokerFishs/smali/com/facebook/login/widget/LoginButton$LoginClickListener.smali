.class public Lcom/facebook/login/widget/LoginButton$LoginClickListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LoginClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method protected constructor <init>(Lcom/facebook/login/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 698
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLoginManager()Lcom/facebook/login/LoginManager;
    .locals 2

    .prologue
    .line 787
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    .line 788
    .local v0, "manager":Lcom/facebook/login/LoginManager;
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->setDefaultAudience(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;

    .line 789
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    .line 790
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 701
    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # invokes: Lcom/facebook/login/widget/LoginButton;->callExternalOnClickListener(Landroid/view/View;)V
    invoke-static {v3, p1}, Lcom/facebook/login/widget/LoginButton;->access$300(Lcom/facebook/login/widget/LoginButton;Landroid/view/View;)V

    .line 703
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 704
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_0

    .line 706
    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v3}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->performLogout(Landroid/content/Context;)V

    .line 711
    :goto_0
    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v3}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v1

    .line 713
    .local v1, "logger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 714
    .local v2, "parameters":Landroid/os/Bundle;
    const-string v4, "logging_in"

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 716
    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # getter for: Lcom/facebook/login/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/login/widget/LoginButton;->access$400(Lcom/facebook/login/widget/LoginButton;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 717
    return-void

    .line 708
    .end local v1    # "logger":Lcom/facebook/appevents/AppEventsLogger;
    .end local v2    # "parameters":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->performLogin()V

    goto :goto_0

    .line 714
    .restart local v1    # "logger":Lcom/facebook/appevents/AppEventsLogger;
    .restart local v2    # "parameters":Landroid/os/Bundle;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method protected performLogin()V
    .locals 3

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->getLoginManager()Lcom/facebook/login/LoginManager;

    move-result-object v0

    .line 721
    .local v0, "loginManager":Lcom/facebook/login/LoginManager;
    sget-object v1, Lcom/facebook/internal/LoginAuthorizationType;->PUBLISH:Lcom/facebook/internal/LoginAuthorizationType;

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/LoginAuthorizationType;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$600(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/internal/LoginAuthorizationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/internal/LoginAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V

    .line 750
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 727
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Fragment;Ljava/util/Collection;)V

    goto :goto_0

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # invokes: Lcom/facebook/login/widget/LoginButton;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->access$800(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0

    .line 736
    :cond_2
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 737
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V

    goto :goto_0

    .line 740
    :cond_3
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 741
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Fragment;Ljava/util/Collection;)V

    goto :goto_0

    .line 745
    :cond_4
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # invokes: Lcom/facebook/login/widget/LoginButton;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->access$900(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # getter for: Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    move-result-object v2

    # getter for: Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->access$700(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method protected performLogout(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 753
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->getLoginManager()Lcom/facebook/login/LoginManager;

    move-result-object v2

    .line 754
    .local v2, "loginManager":Lcom/facebook/login/LoginManager;
    iget-object v6, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    # getter for: Lcom/facebook/login/widget/LoginButton;->confirmLogout:Z
    invoke-static {v6}, Lcom/facebook/login/widget/LoginButton;->access$1000(Lcom/facebook/login/widget/LoginButton;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 756
    iget-object v6, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v6}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/facebook/R$string;->com_facebook_loginview_log_out_action:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, "logout":Ljava/lang/String;
    iget-object v6, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v6}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/facebook/R$string;->com_facebook_loginview_cancel_action:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, "cancel":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v5

    .line 762
    .local v5, "profile":Lcom/facebook/Profile;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 763
    iget-object v6, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v6}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/facebook/R$string;->com_facebook_loginview_logged_in_as:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 771
    .local v4, "message":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 772
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/facebook/login/widget/LoginButton$LoginClickListener$1;

    invoke-direct {v7, p0, v2}, Lcom/facebook/login/widget/LoginButton$LoginClickListener$1;-><init>(Lcom/facebook/login/widget/LoginButton$LoginClickListener;Lcom/facebook/login/LoginManager;)V

    invoke-virtual {v6, v3, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 780
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 784
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "cancel":Ljava/lang/String;
    .end local v3    # "logout":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "profile":Lcom/facebook/Profile;
    :goto_1
    return-void

    .line 768
    .restart local v1    # "cancel":Ljava/lang/String;
    .restart local v3    # "logout":Ljava/lang/String;
    .restart local v5    # "profile":Lcom/facebook/Profile;
    :cond_0
    iget-object v6, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v6}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/facebook/R$string;->com_facebook_loginview_logged_in_using_facebook:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "message":Ljava/lang/String;
    goto :goto_0

    .line 782
    .end local v1    # "cancel":Ljava/lang/String;
    .end local v3    # "logout":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "profile":Lcom/facebook/Profile;
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/login/LoginManager;->logOut()V

    goto :goto_1
.end method
