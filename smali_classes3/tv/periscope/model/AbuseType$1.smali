.class final enum Ltv/periscope/model/AbuseType$1;
.super Ltv/periscope/model/AbuseType;
.source "Twttr"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltv/periscope/model/AbuseType;-><init>(Ljava/lang/String;ILtv/periscope/model/AbuseType$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "SELF_HARM"

    return-object v0
.end method
