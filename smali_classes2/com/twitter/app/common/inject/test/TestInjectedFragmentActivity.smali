.class public Lcom/twitter/app/common/inject/test/TestInjectedFragmentActivity;
.super Lcom/twitter/app/common/inject/InjectedFragmentActivity;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/app/common/inject/b;

.field private b:Lcom/twitter/app/common/inject/c;

.field private c:Lcom/twitter/app/common/inject/test/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;-><init>()V

    .line 25
    invoke-static {}, Lcom/twitter/util/h;->d()V

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/os/Bundle;)Lcom/twitter/app/common/inject/v;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/app/common/inject/test/TestInjectedFragmentActivity;->c:Lcom/twitter/app/common/inject/test/a;

    return-object v0
.end method

.method protected a(Lcom/twitter/app/common/inject/v;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/twitter/app/common/inject/InjectedFragmentActivity;->a(Lcom/twitter/app/common/inject/v;)V

    .line 49
    check-cast p1, Lcom/twitter/app/common/inject/test/a;

    invoke-virtual {p1}, Lcom/twitter/app/common/inject/test/a;->f()V

    .line 50
    return-void
.end method

.method protected b(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/c;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/app/common/inject/test/TestInjectedFragmentActivity;->b:Lcom/twitter/app/common/inject/c;

    return-object v0
.end method

.method protected c(Lcom/twitter/app/common/inject/t;)Lcom/twitter/app/common/inject/b;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/app/common/inject/test/TestInjectedFragmentActivity;->a:Lcom/twitter/app/common/inject/b;

    return-object v0
.end method
