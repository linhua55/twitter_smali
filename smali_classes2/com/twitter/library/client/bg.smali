.class public Lcom/twitter/library/client/bg;
.super Lcom/twitter/library/service/z;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/client/bf;

.field private final b:I


# direct methods
.method public constructor <init>(ILcom/twitter/library/client/bf;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/twitter/library/service/z;-><init>()V

    .line 25
    iput p1, p0, Lcom/twitter/library/client/bg;->b:I

    .line 26
    iput-object p2, p0, Lcom/twitter/library/client/bg;->a:Lcom/twitter/library/client/bf;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/library/client/bg;->a:Lcom/twitter/library/client/bf;

    iget v1, p0, Lcom/twitter/library/client/bg;->b:I

    invoke-interface {v0, v1, p1, p2}, Lcom/twitter/library/client/bf;->a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V

    .line 37
    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/library/client/bg;->a(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public a(Lcom/twitter/library/service/x;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/library/client/bg;->a:Lcom/twitter/library/client/bf;

    iget v1, p0, Lcom/twitter/library/client/bg;->b:I

    invoke-interface {v0, v1, p1}, Lcom/twitter/library/client/bf;->b(ILcom/twitter/library/service/x;)V

    .line 42
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Landroid/os/Bundle;

    check-cast p2, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/client/bg;->a(Landroid/os/Bundle;Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/twitter/internal/android/service/AsyncOperation;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lcom/twitter/library/client/bg;->b(Lcom/twitter/library/service/x;)V

    return-void
.end method

.method public b(Lcom/twitter/library/service/x;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/library/client/bg;->a:Lcom/twitter/library/client/bf;

    iget v1, p0, Lcom/twitter/library/client/bg;->b:I

    invoke-interface {v0, v1, p1}, Lcom/twitter/library/client/bf;->a(ILcom/twitter/library/service/x;)V

    .line 32
    return-void
.end method
