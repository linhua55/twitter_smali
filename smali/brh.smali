.class public Lbrh;
.super Lbqz;
.source "Twttr"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V
    .locals 7

    .prologue
    .line 17
    const-class v0, Lbrd;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lbqz;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;JZ)V

    .line 18
    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "app:twitter_service:mute_convo:destroy"

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "mutes/conversations/destroy"

    return-object v0
.end method
