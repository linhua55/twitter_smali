.class Lcom/twitter/android/iu;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/bo;
.implements Lcom/twitter/library/client/bq;


# instance fields
.field final synthetic a:Lcom/twitter/android/LoginActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/LoginActivity;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 963
    return-void
.end method

.method private b(Lcom/twitter/library/client/Session;I[ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/client/Session;",
            "I[I",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/login/OneFactorEligibleFactor;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1045
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->l_()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0, v7}, Lcom/twitter/android/LoginActivity;->removeDialog(I)V

    .line 1050
    if-eqz p4, :cond_2

    invoke-static {}, Lzm;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1051
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v0, p4}, Lcom/twitter/android/LoginActivity;->a(Lcom/twitter/android/LoginActivity;Ljava/util/List;)V

    goto :goto_0

    .line 1053
    :cond_2
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 1055
    if-ne p2, v8, :cond_5

    .line 1056
    const v1, 0x7f0a08b4

    .line 1057
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    iget-boolean v0, v0, Lcom/twitter/android/LoginActivity;->a:Z

    if-eqz v0, :cond_3

    .line 1058
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "accountAuthenticatorResponse"

    .line 1059
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 1061
    if-eqz v0, :cond_3

    .line 1062
    const/16 v3, 0x190

    iget-object v6, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v6, v1}, Lcom/twitter/android/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 1065
    :cond_3
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v6, "login::::failure"

    aput-object v6, v3, v2

    invoke-virtual {v0, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    move v0, v1

    .line 1111
    :goto_1
    if-eqz v0, :cond_4

    .line 1112
    iget-object v1, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1115
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v0}, Lcom/twitter/android/LoginActivity;->l(Lcom/twitter/android/LoginActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v0, v2}, Lcom/twitter/android/LoginActivity;->a(Lcom/twitter/android/LoginActivity;I)I

    .line 1117
    new-instance v0, Lcom/twitter/android/widget/ec;

    invoke-direct {v0, v8}, Lcom/twitter/android/widget/ec;-><init>(I)V

    const v1, 0x7f0a04bd

    .line 1118
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->a(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a09bb

    .line 1119
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->d(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    const v1, 0x7f0a05a7

    .line 1120
    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/ec;->f(I)Lcom/twitter/android/widget/eb;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/ec;

    .line 1121
    invoke-virtual {v0}, Lcom/twitter/android/widget/ec;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    .line 1122
    invoke-virtual {v1}, Lcom/twitter/android/LoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 1123
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v3, "login::forgot_password_prompt::impression"

    aput-object v3, v1, v2

    .line 1124
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1123
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 1067
    :cond_5
    if-eqz p3, :cond_6

    array-length v0, p3

    if-nez v0, :cond_7

    :cond_6
    move v0, v2

    .line 1069
    :goto_2
    sparse-switch v0, :sswitch_data_0

    .line 1100
    invoke-static {}, Lcom/twitter/util/telephony/TelephonyUtil;->i()Lcom/twitter/util/telephony/TelephonyUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/telephony/TelephonyUtil;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1101
    const v0, 0x7f0a04b6

    goto :goto_1

    .line 1067
    :cond_7
    aget v0, p3, v2

    goto :goto_2

    .line 1072
    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    .line 1073
    invoke-static {v0}, Lcom/twitter/android/LoginActivity;->f(Lcom/twitter/android/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1072
    invoke-static {v4, v5, v0}, Lcom/twitter/android/iz;->a(JLjava/lang/String;)I

    move-result v0

    .line 1075
    iget-object v1, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v1}, Lcom/twitter/android/LoginActivity;->h(Lcom/twitter/android/LoginActivity;)I

    goto/16 :goto_1

    .line 1079
    :sswitch_1
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v0}, Lcom/twitter/android/LoginActivity;->i(Lcom/twitter/android/LoginActivity;)V

    .line 1080
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v3, "login:form::identifier:ambiguous"

    aput-object v3, v1, v2

    .line 1081
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1080
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_0

    .line 1085
    :sswitch_2
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v0}, Lcom/twitter/android/LoginActivity;->j(Lcom/twitter/android/LoginActivity;)V

    goto/16 :goto_0

    .line 1089
    :sswitch_3
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v0}, Lcom/twitter/android/LoginActivity;->k(Lcom/twitter/android/LoginActivity;)V

    goto/16 :goto_0

    .line 1093
    :sswitch_4
    const v0, 0x7f0a04bc

    .line 1094
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v1, v4, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v6, "login:form::identifier:shared_email"

    aput-object v6, v3, v2

    .line 1096
    invoke-virtual {v1, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v1

    .line 1094
    invoke-static {v1}, Lbjf;->a(Lbjh;)V

    goto/16 :goto_1

    .line 1103
    :cond_8
    const v0, 0x7f0a04bb

    goto/16 :goto_1

    .line 1069
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0xe5 -> :sswitch_1
        0xe7 -> :sswitch_2
        0xf4 -> :sswitch_3
        0x10b -> :sswitch_0
        0x131 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;II[IZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1156
    invoke-direct {p0, p1, p2, p4, v5}, Lcom/twitter/android/iu;->b(Lcom/twitter/library/client/Session;I[ILjava/util/List;)V

    .line 1157
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v0, v4}, Lcom/twitter/android/LoginActivity;->a(Lcom/twitter/android/LoginActivity;Z)Z

    .line 1158
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v0}, Lcom/twitter/android/LoginActivity;->m(Lcom/twitter/android/LoginActivity;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1159
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1160
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v5, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "deeplink::1fa_login:failure"

    aput-object v3, v1, v2

    .line 1161
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1159
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1163
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;I[ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/client/Session;",
            "I[I",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/login/OneFactorEligibleFactor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1132
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/iu;->b(Lcom/twitter/library/client/Session;I[ILjava/util/List;)V

    .line 1133
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/LoginVerificationRequiredResponse;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 991
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->l_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    :goto_0
    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0, v5}, Lcom/twitter/android/LoginActivity;->removeDialog(I)V

    .line 1001
    const-string/jumbo v0, "two_factor_challenge_in_web_view_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1002
    const-class v2, Lcom/twitter/android/LoginChallengeActivity;

    .line 1003
    const-string/jumbo v1, "login_challenge_required_response"

    .line 1004
    const/4 v0, 0x3

    .line 1011
    :goto_1
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1012
    invoke-virtual {v3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "username"

    iget-object v3, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    .line 1013
    invoke-static {v3}, Lcom/twitter/android/LoginActivity;->f(Lcom/twitter/android/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "session_id"

    .line 1014
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1015
    iget-object v2, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v2}, Lcom/twitter/android/LoginActivity;->g(Lcom/twitter/android/LoginActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v2}, Lcom/twitter/android/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1016
    const-string/jumbo v2, "start_main"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1019
    :cond_1
    iget-object v2, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/twitter/android/LoginActivity;->a(Lcom/twitter/android/LoginActivity;Z)Z

    .line 1020
    iget-object v2, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v2, v1, v0}, Lcom/twitter/android/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1006
    :cond_2
    const-class v2, Lcom/twitter/android/VerifyLoginActivity;

    .line 1007
    const-string/jumbo v1, "login_verification_required_response"

    .line 1008
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public a(Lcom/twitter/library/client/Session;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->l_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    :goto_0
    return-void

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/LoginActivity;->removeDialog(I)V

    .line 985
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/LoginActivity;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/twitter/library/client/Session;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1138
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->l_()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0, v5}, Lcom/twitter/android/LoginActivity;->removeDialog(I)V

    .line 1143
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/LoginActivity;->a(Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v0, v4}, Lcom/twitter/android/LoginActivity;->a(Lcom/twitter/android/LoginActivity;Z)Z

    .line 1145
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v0}, Lcom/twitter/android/LoginActivity;->m(Lcom/twitter/android/LoginActivity;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1146
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 1147
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v4

    const-string/jumbo v2, "deeplink::1fa_login:success"

    aput-object v2, v1, v5

    .line 1148
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1146
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    goto :goto_0
.end method

.method public b(Lcom/twitter/library/client/Session;Lcom/twitter/model/account/LoginVerificationRequiredResponse;)V
    .locals 4

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    invoke-virtual {v0}, Lcom/twitter/android/LoginActivity;->l_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    :goto_0
    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/LoginActivity;->removeDialog(I)V

    .line 1033
    iget-object v0, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    const-class v3, Lcom/twitter/android/LoginChallengeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "login_challenge_required_response"

    .line 1034
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "username"

    iget-object v3, p0, Lcom/twitter/android/iu;->a:Lcom/twitter/android/LoginActivity;

    .line 1036
    invoke-static {v3}, Lcom/twitter/android/LoginActivity;->f(Lcom/twitter/android/LoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "session_id"

    .line 1037
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x3

    .line 1033
    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
