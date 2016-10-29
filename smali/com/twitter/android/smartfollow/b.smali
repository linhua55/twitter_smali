.class public abstract Lcom/twitter/android/smartfollow/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/di/g;
.implements Lcom/twitter/app/common/inject/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Landroid/os/Parcelable;",
        "T:",
        "Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/twitter/app/common/di/g;",
        "Lcom/twitter/app/common/inject/n",
        "<TS;>;"
    }
.end annotation


# instance fields
.field protected a:J

.field b:Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field c:Landroid/content/Context;

.field d:Ljava/lang/String;

.field e:Lcom/twitter/android/twitterflows/b;

.field f:Lcom/twitter/android/smartfollow/r;

.field g:Lcom/twitter/android/smartfollow/SmartFollowFlowData;

.field h:Lcom/twitter/android/twitterflows/j;

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/twitter/android/smartfollow/b;->a:J

    .line 61
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/twitter/android/smartfollow/b;->c:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public final a(Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/twitter/android/smartfollow/b;->b:Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    .line 44
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->r()V

    .line 45
    return-void
.end method

.method public final a(Lcom/twitter/android/smartfollow/SmartFollowFlowData;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/twitter/android/smartfollow/b;->g:Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    .line 53
    return-void
.end method

.method public final a(Lcom/twitter/android/smartfollow/r;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/twitter/android/smartfollow/b;->f:Lcom/twitter/android/smartfollow/r;

    .line 49
    return-void
.end method

.method public final a(Lcom/twitter/android/twitterflows/b;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/twitter/android/smartfollow/b;->e:Lcom/twitter/android/twitterflows/b;

    .line 69
    return-void
.end method

.method protected a(Lcom/twitter/android/twitterflows/d;)V
    .locals 2

    .prologue
    .line 241
    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->g()Lcom/twitter/android/twitterflows/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/twitter/android/twitterflows/b;->a(Landroid/view/View;Lcom/twitter/android/twitterflows/d;)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->c()Lcom/twitter/android/smartfollow/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/smartfollow/r;->a()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/twitterflows/j;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/twitter/android/smartfollow/b;->h:Lcom/twitter/android/twitterflows/j;

    .line 81
    return-void
.end method

.method public a(Lcom/twitter/app/common/di/InjectionScope;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->e:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_1

    .line 154
    invoke-virtual {p0, v1}, Lcom/twitter/android/smartfollow/b;->a(Lcom/twitter/android/smartfollow/r;)V

    .line 155
    invoke-virtual {p0, v1}, Lcom/twitter/android/smartfollow/b;->a(Lcom/twitter/android/twitterflows/b;)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/twitter/android/smartfollow/b;->a(Lcom/twitter/android/smartfollow/SmartFollowFlowData;)V

    .line 157
    invoke-virtual {p0, v1}, Lcom/twitter/android/smartfollow/b;->a(Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->c:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_0

    .line 160
    iput-object v1, p0, Lcom/twitter/android/smartfollow/b;->b:Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    .line 161
    iput-object v1, p0, Lcom/twitter/android/smartfollow/b;->c:Landroid/content/Context;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/twitter/android/smartfollow/b;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/smartfollow/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/twitter/android/smartfollow/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 193
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-wide v2, p0, Lcom/twitter/android/smartfollow/b;->a:J

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->q()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 207
    invoke-static {p3}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {v0, p3}, Lcom/twitter/library/scribe/TwitterScribeLog;->f(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 211
    :cond_0
    if-eqz p4, :cond_1

    .line 212
    invoke-virtual {v0, p4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Ljava/util/Collection;)Lcom/twitter/library/scribe/ScribeLog;

    .line 215
    :cond_1
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 216
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/twitter/android/smartfollow/b;->j:Z

    .line 73
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
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/android/smartfollow/b;->b:Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/twitter/android/smartfollow/b;->i:Ljava/lang/String;

    .line 77
    return-void
.end method

.method protected final c()Lcom/twitter/android/smartfollow/r;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/twitter/android/smartfollow/b;->f:Lcom/twitter/android/smartfollow/r;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/r;

    return-object v0
.end method

.method protected final f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/twitter/android/smartfollow/b;->g:Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    return-object v0
.end method

.method protected final g()Lcom/twitter/android/twitterflows/b;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/twitter/android/smartfollow/b;->e:Lcom/twitter/android/twitterflows/b;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/twitterflows/b;

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/android/smartfollow/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/twitter/android/smartfollow/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "smart_follow_flow"

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/android/smartfollow/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/twitter/android/smartfollow/b;->j:Z

    return v0
.end method

.method public m()Lcom/twitter/android/twitterflows/j;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/twitter/android/smartfollow/b;->h:Lcom/twitter/android/twitterflows/j;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/twitterflows/j;

    return-object v0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;->b(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;->b(Z)V

    .line 142
    :cond_0
    return-void
.end method

.method protected p()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method protected abstract q()Ljava/lang/String;
.end method

.method protected r()V
    .locals 2

    .prologue
    .line 220
    const/4 v0, 0x0

    const-string/jumbo v1, "impression"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/smartfollow/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method protected s()V
    .locals 2

    .prologue
    .line 225
    const/4 v0, 0x0

    const-string/jumbo v1, "back"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/smartfollow/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public t()V
    .locals 2

    .prologue
    .line 230
    const/4 v0, 0x0

    const-string/jumbo v1, "skip"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/smartfollow/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->m()Lcom/twitter/android/twitterflows/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/twitterflows/j;->a(Lcom/twitter/android/smartfollow/SmartFollowFlowData;)Lcom/twitter/android/twitterflows/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/smartfollow/b;->a(Lcom/twitter/android/twitterflows/d;)V

    .line 232
    return-void
.end method

.method public u()V
    .locals 2

    .prologue
    .line 236
    const/4 v0, 0x0

    const-string/jumbo v1, "next"

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/smartfollow/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->m()Lcom/twitter/android/twitterflows/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/b;->f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/twitterflows/j;->b(Lcom/twitter/android/smartfollow/SmartFollowFlowData;)Lcom/twitter/android/twitterflows/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/smartfollow/b;->a(Lcom/twitter/android/twitterflows/d;)V

    .line 238
    return-void
.end method
