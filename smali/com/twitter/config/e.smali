.class final Lcom/twitter/config/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/h;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 36
    invoke-static {}, Lcom/twitter/config/d;->b()V

    .line 37
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Lcom/twitter/config/d;->a()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lcom/twitter/config/d;->b()V

    .line 32
    :cond_0
    return-void
.end method
