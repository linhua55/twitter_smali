.class Lcom/twitter/android/hg;
.super Lbiv;
.source "Twttr"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V
    .locals 5

    .prologue
    .line 869
    invoke-direct {p0}, Lbiv;-><init>()V

    .line 870
    if-nez p1, :cond_1

    .line 871
    const-string/jumbo v0, "ActiveSessionUserMissing.account_name"

    const-string/jumbo v1, "Missing account"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/hg;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 872
    const-string/jumbo v0, "ActiveSessionUserMissing.reason"

    const-string/jumbo v1, "Context missing"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/hg;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 873
    const-string/jumbo v0, "ActiveSessionUserMissing.additional_info"

    const-string/jumbo v1, "Fragment may have been detached or destroyed"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/hg;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 888
    :cond_0
    :goto_0
    const-string/jumbo v0, "ActiveSessionUserMissing.login_status"

    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->b()Lcom/twitter/library/client/Session$LoginStatus;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/hg;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 889
    return-void

    .line 876
    :cond_1
    invoke-static {}, Lcom/twitter/app/common/account/d;->a()Lcom/twitter/app/common/account/d;

    move-result-object v0

    new-instance v1, Lcom/twitter/app/common/account/UserIdentifier;

    invoke-direct {v1, p3, p4}, Lcom/twitter/app/common/account/UserIdentifier;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/account/d;->a(Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    .line 877
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 878
    :cond_2
    const-string/jumbo v0, "ActiveSessionUserMissing.account_name"

    const-string/jumbo v1, "Missing account"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/hg;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 879
    const-string/jumbo v0, "ActiveSessionUserMissing.reason"

    const-string/jumbo v1, "Cannot find account"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/hg;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 880
    const-string/jumbo v0, "ActiveSessionUserMissing.additional_info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No matching user id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/hg;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    goto :goto_0

    .line 881
    :cond_3
    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    const-string/jumbo v1, "ActiveSessionUserMissing.account_name"

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/hg;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 883
    const-string/jumbo v1, "ActiveSessionUserMissing.reason"

    const-string/jumbo v2, "Session name mismatch"

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/hg;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 884
    const-string/jumbo v1, "ActiveSessionUserMissing.additional_info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Account name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twitter/app/common/account/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", Session name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 885
    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/hg;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcom/twitter/android/hc;)V
    .locals 1

    .prologue
    .line 861
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/hg;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V

    return-void
.end method
