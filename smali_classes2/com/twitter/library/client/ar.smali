.class public Lcom/twitter/library/client/ar;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/util/h;


# instance fields
.field private final a:Lcom/twitter/library/client/bk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/client/ar;->a:Lcom/twitter/library/client/bk;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/library/client/ar;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 25
    const-wide/32 v2, 0xea60

    invoke-static {v0, v1, v2, v3}, Lcbo;->a(JJ)V

    .line 27
    return-void
.end method
