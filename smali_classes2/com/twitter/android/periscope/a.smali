.class public final Lcom/twitter/android/periscope/a;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Ltv/periscope/android/api/Constants;->API_PROD_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "https://signer.periscope.tv"

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Ltv/periscope/android/api/Constants;->CHANNELS_PROD_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ltv/periscope/android/api/Constants;->SAFETY_SERVICE_PROD_URL:Ljava/lang/String;

    return-object v0
.end method
