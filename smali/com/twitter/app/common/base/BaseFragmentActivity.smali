.class public Lcom/twitter/app/common/base/BaseFragmentActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/h;
.implements Lcom/twitter/app/common/base/p;
.implements Lcom/twitter/app/common/util/t;


# static fields
.field static final synthetic F:Z


# instance fields
.field private final a:Ldlx;

.field private final b:Lcom/twitter/app/common/util/b;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lauy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/twitter/app/common/base/BaseFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/app/common/base/BaseFragmentActivity;->F:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 32
    new-instance v0, Ldlx;

    invoke-direct {v0}, Ldlx;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->a:Ldlx;

    .line 33
    new-instance v0, Lcom/twitter/app/common/util/b;

    invoke-direct {v0}, Lcom/twitter/app/common/util/b;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    return-void
.end method


# virtual methods
.method public F()Lauy;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->g:Lauy;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Lcom/twitter/app/common/base/BaseFragmentActivity;->F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 195
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILcom/twitter/app/common/util/w;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/app/common/util/b;->a(ILcom/twitter/app/common/util/w;)V

    .line 156
    return-void
.end method

.method public a(Lcom/twitter/app/common/util/a;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/util/b;->a(Lcom/twitter/app/common/util/a;)V

    .line 146
    return-void
.end method

.method public a(Lcom/twitter/app/common/util/w;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/util/b;->a(Lcom/twitter/app/common/util/w;)V

    .line 166
    return-void
.end method

.method public final a(Lcom/twitter/util/concurrent/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/concurrent/j",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->a:Ldlx;

    invoke-static {v0, p1}, Ldbz;->a(Ldlx;Lcom/twitter/util/concurrent/j;)V

    .line 229
    return-void
.end method

.method public a_(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 205
    sget-boolean v0, Lcom/twitter/app/common/base/BaseFragmentActivity;->F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public aj_()Landroid/support/v7/app/AppCompatDelegate;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/twitter/app/common/util/a;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/util/b;->b(Lcom/twitter/app/common/util/a;)Z

    .line 151
    return-void
.end method

.method public i(I)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/util/b;->a(I)Z

    .line 161
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->e:Z

    return v0
.end method

.method public l_()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m_()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->d:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/twitter/app/common/util/b;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 105
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 106
    iget-object v1, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->g:Lauy;

    invoke-virtual {v1}, Lauy;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lauy;->a(Landroid/content/res/Configuration;Z)V

    .line 107
    invoke-virtual {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 108
    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 109
    iget-object v1, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v1, p0, v0}, Lcom/twitter/app/common/util/b;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 110
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lauy;

    invoke-direct {v0, p0}, Lauy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->g:Lauy;

    .line 46
    invoke-virtual {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->f:Ljava/util/Map;

    .line 47
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->f:Ljava/util/Map;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0, p1}, Lcom/twitter/app/common/util/b;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->a:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->e:Z

    .line 117
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 118
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/app/common/util/b;->e(Landroid/app/Activity;)V

    .line 119
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0, p1}, Lcom/twitter/app/common/util/b;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->d:Z

    .line 81
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 82
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/app/common/util/b;->c(Landroid/app/Activity;)V

    .line 83
    return-void
.end method

.method protected onResume()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/app/common/util/b;->b(Landroid/app/Activity;)V

    .line 73
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->d:Z

    .line 75
    return-void
.end method

.method public final onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/twitter/app/common/base/BaseFragmentActivity;->r_()V

    .line 183
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->f:Ljava/util/Map;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0, p1}, Lcom/twitter/app/common/util/b;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method protected onStart()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/app/common/util/b;->a(Landroid/app/Activity;)V

    .line 65
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->c:Z

    .line 67
    return-void
.end method

.method protected onStop()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->c:Z

    .line 89
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 90
    iget-object v0, p0, Lcom/twitter/app/common/base/BaseFragmentActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/app/common/util/b;->d(Landroid/app/Activity;)V

    .line 91
    return-void
.end method

.method protected r_()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 215
    return-void
.end method
