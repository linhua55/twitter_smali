.class public abstract Lcom/twitter/app/common/inject/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;
.implements Lcom/twitter/app/common/inject/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/app/common/inject/m;",
        "Lcom/twitter/app/common/inject/r",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/app/common/inject/o;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/twitter/app/common/inject/o;

    invoke-direct {v0}, Lcom/twitter/app/common/inject/o;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/inject/v;->a:Lcom/twitter/app/common/inject/o;

    .line 33
    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/twitter/app/common/inject/o;

    invoke-direct {v0}, Lcom/twitter/app/common/inject/o;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/inject/v;->a:Lcom/twitter/app/common/inject/o;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/twitter/app/common/inject/v;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/inject/o;->a(Landroid/content/res/Configuration;)V

    .line 101
    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/twitter/app/common/inject/v;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/inject/o;->a(Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/twitter/app/common/inject/v;->b:Landroid/view/View;

    .line 56
    return-void
.end method

.method public synthetic aH_()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/twitter/app/common/inject/v;->r()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final aK_()Landroid/view/View;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/app/common/inject/v;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Content view has not been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/inject/v;->b:Landroid/view/View;

    return-object v0
.end method

.method public aL_()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/common/inject/v;->d:Z

    .line 81
    iget-object v0, p0, Lcom/twitter/app/common/inject/v;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0}, Lcom/twitter/app/common/inject/o;->b()V

    .line 82
    return-void
.end method

.method public aM_()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/app/common/inject/v;->d:Z

    .line 88
    iget-object v0, p0, Lcom/twitter/app/common/inject/v;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0}, Lcom/twitter/app/common/inject/o;->c()V

    .line 89
    return-void
.end method

.method public aN_()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/app/common/inject/v;->c:Z

    .line 95
    iget-object v0, p0, Lcom/twitter/app/common/inject/v;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0}, Lcom/twitter/app/common/inject/o;->d()V

    .line 96
    return-void
.end method

.method public aO_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string/jumbo v0, "ViewHost"

    return-object v0
.end method

.method public ar_()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/common/inject/v;->c:Z

    .line 74
    iget-object v0, p0, Lcom/twitter/app/common/inject/v;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0}, Lcom/twitter/app/common/inject/o;->a()V

    .line 75
    return-void
.end method

.method public as_()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/common/inject/v;->e:Z

    .line 135
    iget-object v0, p0, Lcom/twitter/app/common/inject/v;->a:Lcom/twitter/app/common/inject/o;

    invoke-virtual {v0}, Lcom/twitter/app/common/inject/o;->e()V

    .line 136
    return-void
.end method

.method public q()Lcom/twitter/app/common/inject/o;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/twitter/app/common/inject/v;->a:Lcom/twitter/app/common/inject/o;

    return-object v0
.end method

.method public final r()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    invoke-virtual {p0, v0}, Lcom/twitter/app/common/inject/v;->a(Landroid/os/Bundle;)V

    .line 117
    return-object v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/twitter/app/common/inject/v;->e:Z

    return v0
.end method
