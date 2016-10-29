.class public Lbqj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbqa;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lbqj;->a:J

    .line 17
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "list_user_moments"

    return-object v0
.end method

.method public a(Lcom/twitter/library/service/e;)V
    .locals 4

    .prologue
    .line 45
    const-string/jumbo v0, "userId"

    iget-wide v2, p0, Lbqj;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/twitter/library/service/e;->a(Ljava/lang/String;J)Lcom/twitter/library/service/e;

    .line 46
    return-void
.end method

.method public b()Lcom/twitter/internal/network/HttpOperation$RequestMethod;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/twitter/internal/network/HttpOperation$RequestMethod;->a:Lcom/twitter/internal/network/HttpOperation$RequestMethod;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lbqj;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x3

    return v0
.end method
