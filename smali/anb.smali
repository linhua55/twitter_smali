.class public Lanb;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lanf;

.field private final b:Land;

.field private c:Lcom/twitter/internal/android/widget/e;


# direct methods
.method public constructor <init>(Lanf;J)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lanb;->a:Lanf;

    .line 18
    new-instance v0, Land;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Land;-><init>(Lanb;Lanc;)V

    iput-object v0, p0, Lanb;->b:Land;

    .line 19
    iget-object v0, p0, Lanb;->a:Lanf;

    invoke-virtual {v0, p2, p3}, Lanf;->a(J)Lrx/o;

    move-result-object v0

    iget-object v1, p0, Lanb;->b:Land;

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    .line 20
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lanb;->b:Land;

    invoke-virtual {v0}, Land;->R_()V

    .line 34
    iget-object v0, p0, Lanb;->a:Lanf;

    invoke-virtual {v0}, Lanf;->close()V

    .line 35
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lanb;->c:Lcom/twitter/internal/android/widget/e;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lanb;->c:Lcom/twitter/internal/android/widget/e;

    invoke-interface {v0, p1}, Lcom/twitter/internal/android/widget/e;->setBadgeNumber(I)V

    .line 30
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/internal/android/widget/e;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lanb;->c:Lcom/twitter/internal/android/widget/e;

    .line 24
    return-void
.end method
