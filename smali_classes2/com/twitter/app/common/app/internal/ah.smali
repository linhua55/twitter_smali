.class public Lcom/twitter/app/common/app/internal/ah;
.super Lcom/twitter/app/common/app/internal/ao;
.source "Twttr"


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/account/UserIdentifier;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/twitter/app/common/app/internal/ao;-><init>(Lcom/twitter/app/common/account/UserIdentifier;)V

    .line 18
    return-void
.end method

.method static a(Lcom/twitter/app/common/account/UserIdentifier;Lcom/twitter/library/client/bk;)Lcom/twitter/library/client/Session;
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method
