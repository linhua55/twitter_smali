.class public abstract Lcom/twitter/android/profilecompletionmodule/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/di/g;
.implements Lcom/twitter/app/common/inject/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "S::",
        "Landroid/os/Parcelable;",
        "T:",
        "Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/twitter/app/common/di/g;",
        "Lcom/twitter/app/common/inject/n",
        "<TS;>;"
    }
.end annotation


# instance fields
.field protected a:J

.field private b:Lcom/twitter/android/profilecompletionmodule/e;

.field private c:Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private f:Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Lcom/twitter/android/twitterflows/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/twitter/android/twitterflows/d;Z)V
    .locals 5

    .prologue
    .line 204
    if-eqz p1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/a;->f:Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/a;->g()Lcom/twitter/android/twitterflows/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/profilecompletionmodule/a;->f:Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    invoke-interface {v0, v1, p1}, Lcom/twitter/android/twitterflows/b;->a(Landroid/view/View;Lcom/twitter/android/twitterflows/d;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/a;->f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    move-result-object v0

    .line 210
    iget-wide v2, p0, Lcom/twitter/android/profilecompletionmodule/a;->a:J

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/a;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/a;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/twitter/android/profilecompletionmodule/e;->a(Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;)V

    .line 212
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/a;->c()Lcom/twitter/android/profilecompletionmodule/e;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/twitter/android/profilecompletionmodule/e;->a(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/a;->e:Ljava/lang/Object;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/twitter/android/profilecompletionmodule/a;->a:J

    .line 56
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/twitter/android/profilecompletionmodule/a;->g:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public a(Landroid/content/DialogInterface;II)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public final a(Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/twitter/android/profilecompletionmodule/a;->f:Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    .line 39
    return-void
.end method

.method public final a(Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/twitter/android/profilecompletionmodule/a;->c:Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    .line 48
    return-void
.end method

.method public final a(Lcom/twitter/android/profilecompletionmodule/e;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/twitter/android/profilecompletionmodule/a;->b:Lcom/twitter/android/profilecompletionmodule/e;

    .line 43
    return-void
.end method

.method public final a(Lcom/twitter/android/twitterflows/b;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/twitter/android/profilecompletionmodule/a;->h:Lcom/twitter/android/twitterflows/b;

    .line 64
    return-void
.end method

.method public a(Lcom/twitter/app/common/di/InjectionScope;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->e:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_1

    .line 128
    invoke-virtual {p0, v1}, Lcom/twitter/android/profilecompletionmodule/a;->a(Lcom/twitter/android/profilecompletionmodule/e;)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/twitter/android/profilecompletionmodule/a;->a(Lcom/twitter/android/twitterflows/b;)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/twitter/android/profilecompletionmodule/a;->a(Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/twitter/android/profilecompletionmodule/a;->a(Ljava/lang/String;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->c:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_0

    .line 134
    invoke-virtual {p0, v1}, Lcom/twitter/android/profilecompletionmodule/a;->a(Ljava/lang/Object;)V

    .line 135
    iput-object v1, p0, Lcom/twitter/android/profilecompletionmodule/a;->f:Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    .line 136
    iput-object v1, p0, Lcom/twitter/android/profilecompletionmodule/a;->g:Landroid/content/Context;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Lcom/twitter/android/profilecompletionmodule/a;->e:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/twitter/android/profilecompletionmodule/a;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/profilecompletionmodule/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 169
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/profilecompletionmodule/a;->a:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/a;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/a;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/a;->n()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 171
    invoke-static {p3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v0, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 174
    :cond_0
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 175
    return-void
.end method

.method public aH_()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b()Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/a;->f:Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    return-object v0
.end method

.method protected final c()Lcom/twitter/android/profilecompletionmodule/e;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/a;->b:Lcom/twitter/android/profilecompletionmodule/e;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/e;

    return-object v0
.end method

.method protected f()Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/a;->c:Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/ProfileCompletionModulePendingChanges;

    return-object v0
.end method

.method protected final g()Lcom/twitter/android/twitterflows/b;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/a;->h:Lcom/twitter/android/twitterflows/b;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/twitterflows/b;

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string/jumbo v0, "edit_profile_flow"

    return-object v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/a;->f:Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/a;->f:Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;->a(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/a;->f:Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/a;->f:Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/profilecompletionmodule/BaseProfileStepScreen;->a(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method protected m()V
    .locals 2

    .prologue
    .line 148
    const/4 v0, 0x0

    const-string/jumbo v1, "impression"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method protected abstract n()Ljava/lang/String;
.end method

.method protected abstract o()Lcom/twitter/android/twitterflows/d;
.end method

.method protected abstract p()Lcom/twitter/android/twitterflows/d;
.end method

.method protected q()V
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x0

    const-string/jumbo v1, "back"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method protected r()V
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x0

    const-string/jumbo v1, "skip"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/a;->o()Lcom/twitter/android/twitterflows/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/a;->a(Lcom/twitter/android/twitterflows/d;Z)V

    .line 195
    return-void
.end method

.method protected s()V
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x0

    const-string/jumbo v1, "next"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/a;->p()Lcom/twitter/android/twitterflows/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/profilecompletionmodule/a;->a(Lcom/twitter/android/twitterflows/d;Z)V

    .line 201
    return-void
.end method
