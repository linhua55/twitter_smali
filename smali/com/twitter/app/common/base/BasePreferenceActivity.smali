.class public Lcom/twitter/app/common/base/BasePreferenceActivity;
.super Lcom/twitter/app/common/base/AppCompatPreferenceActivity;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/kz;
.implements Lcom/twitter/app/common/base/p;
.implements Lcom/twitter/app/common/util/t;


# static fields
.field static final synthetic H:Z


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
    .line 27
    const-class v0, Lcom/twitter/app/common/base/BasePreferenceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/app/common/base/BasePreferenceActivity;->H:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/twitter/app/common/base/AppCompatPreferenceActivity;-><init>()V

    .line 30
    new-instance v0, Ldlx;

    invoke-direct {v0}, Ldlx;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->a:Ldlx;

    .line 31
    new-instance v0, Lcom/twitter/app/common/util/b;

    invoke-direct {v0}, Lcom/twitter/app/common/util/b;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    return-void
.end method


# virtual methods
.method public F()Lauy;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->g:Lauy;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    sget-boolean v0, Lcom/twitter/app/common/base/BasePreferenceActivity;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 188
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILcom/twitter/app/common/util/w;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/app/common/util/b;->a(ILcom/twitter/app/common/util/w;)V

    .line 149
    return-void
.end method

.method public a(Lcom/twitter/app/common/util/a;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/util/b;->a(Lcom/twitter/app/common/util/a;)V

    .line 139
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
    .line 198
    sget-boolean v0, Lcom/twitter/app/common/base/BasePreferenceActivity;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected al_()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 208
    return-void
.end method

.method public b(Lcom/twitter/app/common/util/a;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p1}, Lcom/twitter/app/common/util/b;->b(Lcom/twitter/app/common/util/a;)Z

    .line 144
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->e:Z

    return v0
.end method

.method public l_()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/app/common/base/BasePreferenceActivity;->isFinishing()Z

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
    .line 128
    iget-boolean v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->d:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/twitter/app/common/util/b;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/app/common/base/AppCompatPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 119
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/AppCompatPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 102
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0, p1}, Lcom/twitter/app/common/util/b;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 103
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lauy;

    invoke-direct {v0, p0}, Lauy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->g:Lauy;

    .line 44
    invoke-virtual {p0}, Lcom/twitter/app/common/base/BasePreferenceActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->f:Ljava/util/Map;

    .line 45
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->f:Ljava/util/Map;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0, p1}, Lcom/twitter/app/common/util/b;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 49
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/AppCompatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->a:Ldlx;

    invoke-virtual {v0}, Ldlx;->R_()V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->e:Z

    .line 110
    invoke-super {p0}, Lcom/twitter/app/common/base/AppCompatPreferenceActivity;->onDestroy()V

    .line 111
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/app/common/util/b;->e(Landroid/app/Activity;)V

    .line 112
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0, p1}, Lcom/twitter/app/common/util/b;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 56
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/AppCompatPreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method protected onPause()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->d:Z

    .line 79
    invoke-super {p0}, Lcom/twitter/app/common/base/AppCompatPreferenceActivity;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/app/common/util/b;->c(Landroid/app/Activity;)V

    .line 81
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 214
    return-void
.end method

.method protected onResume()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/app/common/util/b;->b(Landroid/app/Activity;)V

    .line 71
    invoke-super {p0}, Lcom/twitter/app/common/base/AppCompatPreferenceActivity;->onResume()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->d:Z

    .line 73
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/twitter/app/common/base/BasePreferenceActivity;->al_()V

    .line 176
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->f:Ljava/util/Map;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/AppCompatPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 95
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0, p1}, Lcom/twitter/app/common/util/b;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method protected onStart()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/app/common/util/b;->a(Landroid/app/Activity;)V

    .line 63
    invoke-super {p0}, Lcom/twitter/app/common/base/AppCompatPreferenceActivity;->onStart()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->c:Z

    .line 65
    return-void
.end method

.method protected onStop()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->c:Z

    .line 87
    invoke-super {p0}, Lcom/twitter/app/common/base/AppCompatPreferenceActivity;->onStop()V

    .line 88
    iget-object v0, p0, Lcom/twitter/app/common/base/BasePreferenceActivity;->b:Lcom/twitter/app/common/util/b;

    invoke-virtual {v0, p0}, Lcom/twitter/app/common/util/b;->d(Landroid/app/Activity;)V

    .line 89
    return-void
.end method
