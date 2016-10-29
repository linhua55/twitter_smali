.class Lcom/twitter/android/ho;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/hn;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/timeline/l;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/library/widget/InlineDismissView;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Landroid/content/Context;

.field private final f:Lcom/twitter/library/client/bk;

.field private final g:Lcom/twitter/library/client/bd;

.field private final h:Lcia;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Lcom/twitter/library/widget/r;

.field private final k:Lcom/twitter/util/concurrent/FutureMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/concurrent/FutureMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ldau;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldau",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/timeline/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/content/Context;Lcom/twitter/library/client/bk;Lcom/twitter/library/client/bd;Lcia;Ljava/util/concurrent/Executor;Lcom/twitter/library/widget/r;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ho;->a:Ljava/util/Map;

    .line 70
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ho;->b:Ljava/util/Set;

    .line 72
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ho;->c:Ljava/util/Set;

    .line 86
    new-instance v0, Lcom/twitter/util/concurrent/FutureMap;

    invoke-direct {v0}, Lcom/twitter/util/concurrent/FutureMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/ho;->k:Lcom/twitter/util/concurrent/FutureMap;

    .line 88
    new-instance v0, Lcom/twitter/android/hp;

    invoke-direct {v0, p0}, Lcom/twitter/android/hp;-><init>(Lcom/twitter/android/ho;)V

    iput-object v0, p0, Lcom/twitter/android/ho;->l:Ldau;

    .line 96
    invoke-static {}, Lcom/twitter/util/collection/MutableMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ho;->m:Ljava/util/Map;

    .line 104
    iput p1, p0, Lcom/twitter/android/ho;->d:I

    .line 105
    iput-object p2, p0, Lcom/twitter/android/ho;->e:Landroid/content/Context;

    .line 106
    iput-object p3, p0, Lcom/twitter/android/ho;->f:Lcom/twitter/library/client/bk;

    .line 107
    iput-object p4, p0, Lcom/twitter/android/ho;->g:Lcom/twitter/library/client/bd;

    .line 108
    iput-object p5, p0, Lcom/twitter/android/ho;->h:Lcia;

    .line 109
    iput-object p6, p0, Lcom/twitter/android/ho;->i:Ljava/util/concurrent/Executor;

    .line 110
    new-instance v0, Lcom/twitter/android/ht;

    invoke-direct {v0, p0, p7}, Lcom/twitter/android/ht;-><init>(Lcom/twitter/android/ho;Lcom/twitter/library/widget/r;)V

    iput-object v0, p0, Lcom/twitter/android/ho;->j:Lcom/twitter/library/widget/r;

    .line 112
    if-eqz p8, :cond_0

    .line 113
    invoke-virtual {p0, p8}, Lcom/twitter/android/ho;->b(Landroid/os/Bundle;)V

    .line 115
    :cond_0
    return-void
.end method

.method private a(Lcom/twitter/android/timeline/bp;J)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 387
    sget-object v0, Lcom/twitter/library/provider/q;->a:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/twitter/android/timeline/bp;->n:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/twitter/library/provider/cn;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/ho;Lcom/twitter/android/timeline/bp;Lcom/twitter/model/timeline/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/ho;->a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/timeline/i;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/timeline/i;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/twitter/android/ho;->h:Lcia;

    iget-object v1, p1, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    invoke-virtual {v0, v1, p2, p3}, Lcia;->a(Lcom/twitter/model/timeline/al;Lcom/twitter/model/timeline/i;Ljava/lang/String;)V

    .line 394
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/timeline/i;Lcom/twitter/model/timeline/al;ZLcom/twitter/android/timeline/bp;)Lbrv;
    .locals 9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 377
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v6

    .line 378
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v7

    .line 379
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v8

    .line 380
    invoke-virtual {p6, v6, v7, v8}, Lcom/twitter/android/timeline/bp;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 381
    new-instance v0, Lbrv;

    new-instance v2, Lcom/twitter/library/service/ab;

    invoke-direct {v2, p2}, Lcom/twitter/library/service/ab;-><init>(Lcom/twitter/library/client/Session;)V

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lbrv;-><init>(Landroid/content/Context;Lcom/twitter/library/service/ab;Lcom/twitter/model/timeline/i;Lcom/twitter/model/timeline/al;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;ZI)Lcom/twitter/internal/android/service/AsyncOperation;
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/client/Session;",
            "Ljava/lang/String;",
            "ZI)",
            "Lcom/twitter/internal/android/service/AsyncOperation",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 327
    iget v3, p0, Lcom/twitter/android/ho;->d:I

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcif;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;IZI)Lcif;

    move-result-object v0

    return-object v0
.end method

.method a(JLcom/twitter/model/timeline/i;)Lcom/twitter/model/timeline/i;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/twitter/android/ho;->m:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/i;

    return-object v0
.end method

.method public a(JLcom/twitter/model/timeline/l;)Lcom/twitter/model/timeline/l;
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/twitter/android/ho;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/l;

    return-object v0
.end method

.method a(Lcom/twitter/android/timeline/bp;)Lcom/twitter/util/concurrent/j;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/timeline/bp;",
            ")",
            "Lcom/twitter/util/concurrent/j",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/twitter/android/ho;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ho;->f:Lcom/twitter/library/client/bk;

    .line 334
    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/twitter/android/ho;->a(Lcom/twitter/android/timeline/bp;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/twitter/library/provider/p;->a:[Ljava/lang/String;

    .line 333
    invoke-static {v0, v1, v2}, Lazu;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Lcom/twitter/util/concurrent/j;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/twitter/android/ho;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/twitter/android/ho;->c:Ljava/util/Set;

    iget-object v1, p0, Lcom/twitter/android/ho;->l:Ldau;

    .line 207
    invoke-static {v0, v1}, Lczz;->a(Ljava/lang/Iterable;Ldau;)Ljava/lang/Iterable;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/InlineDismissView;

    .line 209
    const v1, 0x7f13006f

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/InlineDismissView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/timeline/bp;

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ho;->d(Lcom/twitter/library/widget/InlineDismissView;Lcom/twitter/android/timeline/bp;)V

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method a(JLjava/util/concurrent/Future;)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/twitter/android/ho;->k:Lcom/twitter/util/concurrent/FutureMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/twitter/util/concurrent/FutureMap;->a(Ljava/lang/Object;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 341
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 216
    const-string/jumbo v0, "fetched_dismiss_infos"

    iget-object v1, p0, Lcom/twitter/android/ho;->a:Ljava/util/Map;

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    sget-object v3, Lcom/twitter/model/timeline/l;->a:Lcom/twitter/util/serialization/ah;

    .line 217
    invoke-static {v2, v3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 216
    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 218
    const-string/jumbo v0, "saved_feedback_actions"

    iget-object v1, p0, Lcom/twitter/android/ho;->m:Ljava/util/Map;

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    sget-object v3, Lcom/twitter/model/timeline/i;->a:Lcom/twitter/util/serialization/ah;

    .line 219
    invoke-static {v2, v3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 218
    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 220
    const-string/jumbo v0, "dismissed_ids"

    iget-object v1, p0, Lcom/twitter/android/ho;->b:Ljava/util/Set;

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 221
    invoke-static {v2}, Lcom/twitter/util/collection/e;->b(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 220
    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 222
    return-void
.end method

.method a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/timeline/l;)V
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 369
    iget-object v7, p0, Lcom/twitter/android/ho;->g:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/ho;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/twitter/android/ho;->f:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p2, Lcom/twitter/model/timeline/l;->b:Lcom/twitter/model/timeline/i;

    iget-object v4, p1, Lcom/twitter/android/timeline/bp;->o:Lcom/twitter/model/timeline/al;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/ho;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/timeline/i;Lcom/twitter/model/timeline/al;ZLcom/twitter/android/timeline/bp;)Lbrv;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;)Ljava/lang/String;

    .line 371
    return-void
.end method

.method public a(Lcom/twitter/library/widget/InlineDismissView;Lcom/twitter/android/timeline/bp;)V
    .locals 4

    .prologue
    .line 154
    const v0, 0x7f13006f

    invoke-virtual {p1, v0, p2}, Lcom/twitter/library/widget/InlineDismissView;->setTag(ILjava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/twitter/android/ho;->j:Lcom/twitter/library/widget/r;

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/InlineDismissView;->setDismissListener(Lcom/twitter/library/widget/r;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/twitter/android/ho;->a(Lcom/twitter/library/widget/InlineDismissView;)Z

    .line 158
    iget-wide v2, p2, Lcom/twitter/android/timeline/bp;->n:J

    .line 159
    iget-object v0, p0, Lcom/twitter/android/ho;->e:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/twitter/android/eg;->a(Landroid/content/Context;Lcom/twitter/android/timeline/bp;)Lcom/twitter/model/timeline/l;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0, v2, v3}, Lcom/twitter/android/ho;->c(J)Lcom/twitter/model/timeline/l;

    move-result-object v0

    .line 163
    :cond_0
    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/InlineDismissView;->setDismissInfo(Lcom/twitter/model/timeline/l;)V

    .line 165
    if-nez v0, :cond_3

    .line 166
    invoke-virtual {p2}, Lcom/twitter/android/timeline/bp;->c()Lcom/twitter/android/timeline/bj;

    move-result-object v0

    iget v0, v0, Lcom/twitter/android/timeline/bj;->n:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 167
    new-instance v0, Lbiv;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unable to find non-server specifieddismiss reason"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbiv;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lbix;->a(Lbiv;)V

    .line 171
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/ho;->c(Lcom/twitter/library/widget/InlineDismissView;Lcom/twitter/android/timeline/bp;)V

    .line 182
    :cond_2
    :goto_0
    return-void

    .line 173
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/twitter/android/ho;->g(J)Lcom/twitter/model/timeline/i;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_4

    .line 175
    invoke-virtual {p1, v1}, Lcom/twitter/library/widget/InlineDismissView;->setCurrentFeedbackAction(Lcom/twitter/model/timeline/i;)V

    goto :goto_0

    .line 176
    :cond_4
    invoke-virtual {p0, v2, v3}, Lcom/twitter/android/ho;->e(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 177
    invoke-virtual {p0, v2, v3}, Lcom/twitter/android/ho;->a(J)Z

    .line 178
    invoke-virtual {p0, p2, v0}, Lcom/twitter/android/ho;->a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/timeline/l;)V

    .line 179
    iget-object v0, v0, Lcom/twitter/model/timeline/l;->b:Lcom/twitter/model/timeline/i;

    const-string/jumbo v1, "click"

    invoke-direct {p0, p2, v0, v1}, Lcom/twitter/android/ho;->a(Lcom/twitter/android/timeline/bp;Lcom/twitter/model/timeline/i;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(J)Z
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/twitter/android/ho;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method a(Lcom/twitter/library/widget/InlineDismissView;)Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/twitter/android/ho;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(J)Lcom/twitter/model/timeline/l;
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/twitter/android/ho;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/l;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/twitter/android/ho;->k:Lcom/twitter/util/concurrent/FutureMap;

    invoke-virtual {v0}, Lcom/twitter/util/concurrent/FutureMap;->clear()V

    .line 196
    iget-object v0, p0, Lcom/twitter/android/ho;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 197
    iget-object v0, p0, Lcom/twitter/android/ho;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 198
    return-void
.end method

.method b(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 350
    const-string/jumbo v0, "fetched_dismiss_infos"

    sget-object v1, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    sget-object v2, Lcom/twitter/model/timeline/l;->a:Lcom/twitter/util/serialization/ah;

    .line 352
    invoke-static {v1, v2}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v1

    .line 350
    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 353
    const-string/jumbo v1, "saved_feedback_actions"

    sget-object v2, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    sget-object v3, Lcom/twitter/model/timeline/i;->a:Lcom/twitter/util/serialization/ah;

    .line 355
    invoke-static {v2, v3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v2

    .line 353
    invoke-static {p1, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 356
    const-string/jumbo v2, "dismissed_ids"

    sget-object v3, Lcom/twitter/util/serialization/i;->f:Lcom/twitter/util/serialization/ah;

    .line 358
    invoke-static {v3}, Lcom/twitter/util/collection/e;->b(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v3

    .line 356
    invoke-static {p1, v2, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 359
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 360
    iget-object v3, p0, Lcom/twitter/android/ho;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 361
    iget-object v0, p0, Lcom/twitter/android/ho;->m:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 362
    iget-object v0, p0, Lcom/twitter/android/ho;->b:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 364
    :cond_0
    return-void
.end method

.method public b(Lcom/twitter/library/widget/InlineDismissView;Lcom/twitter/android/timeline/bp;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-virtual {p0, p1}, Lcom/twitter/android/ho;->b(Lcom/twitter/library/widget/InlineDismissView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v6, p0, Lcom/twitter/android/ho;->g:Lcom/twitter/library/client/bd;

    iget-object v1, p0, Lcom/twitter/android/ho;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/twitter/android/ho;->f:Lcom/twitter/library/client/bk;

    .line 188
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-virtual {p2}, Lcom/twitter/android/timeline/bp;->d()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v5, v4

    .line 187
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/ho;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;ZI)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 191
    :cond_0
    return-void
.end method

.method b(Lcom/twitter/library/widget/InlineDismissView;)Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/twitter/android/ho;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(J)Lcom/twitter/model/timeline/l;
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/twitter/android/ho;->a:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/l;

    return-object v0
.end method

.method c(Lcom/twitter/library/widget/InlineDismissView;Lcom/twitter/android/timeline/bp;)V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 260
    iget-wide v0, p2, Lcom/twitter/android/timeline/bp;->n:J

    .line 261
    invoke-virtual {p0, p2}, Lcom/twitter/android/ho;->a(Lcom/twitter/android/timeline/bp;)Lcom/twitter/util/concurrent/j;

    move-result-object v2

    .line 262
    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/ho;->a(JLjava/util/concurrent/Future;)V

    .line 263
    new-instance v3, Lcom/twitter/util/concurrent/f;

    invoke-direct {v3}, Lcom/twitter/util/concurrent/f;-><init>()V

    iget-object v4, p0, Lcom/twitter/android/ho;->i:Ljava/util/concurrent/Executor;

    .line 264
    invoke-virtual {v3, v4}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v3

    new-instance v4, Lcom/twitter/android/aq;

    invoke-direct {v4, p0, p1, p2}, Lcom/twitter/android/aq;-><init>(Lcom/twitter/android/hn;Lcom/twitter/library/widget/InlineDismissView;Lcom/twitter/android/timeline/bp;)V

    .line 265
    invoke-virtual {v3, v4}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v3

    .line 263
    invoke-interface {v2, v3}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    move-result-object v2

    new-instance v3, Lcom/twitter/util/concurrent/f;

    invoke-direct {v3}, Lcom/twitter/util/concurrent/f;-><init>()V

    iget-object v4, p0, Lcom/twitter/android/ho;->i:Ljava/util/concurrent/Executor;

    .line 267
    invoke-virtual {v3, v4}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v3

    new-instance v4, Lcom/twitter/android/hr;

    invoke-direct {v4, p0, v0, v1, p2}, Lcom/twitter/android/hr;-><init>(Lcom/twitter/android/ho;JLcom/twitter/android/timeline/bp;)V

    .line 268
    invoke-virtual {v3, v4}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v3

    .line 266
    invoke-interface {v2, v3}, Lcom/twitter/util/concurrent/j;->b(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    move-result-object v2

    new-instance v3, Lcom/twitter/util/concurrent/f;

    invoke-direct {v3}, Lcom/twitter/util/concurrent/f;-><init>()V

    iget-object v4, p0, Lcom/twitter/android/ho;->i:Ljava/util/concurrent/Executor;

    .line 280
    invoke-virtual {v3, v4}, Lcom/twitter/util/concurrent/f;->a(Ljava/util/concurrent/Executor;)Lcom/twitter/util/concurrent/f;

    move-result-object v3

    new-instance v4, Lcom/twitter/android/hq;

    invoke-direct {v4, p0, v0, v1}, Lcom/twitter/android/hq;-><init>(Lcom/twitter/android/ho;J)V

    .line 281
    invoke-virtual {v3, v4}, Lcom/twitter/util/concurrent/f;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/f;

    move-result-object v0

    .line 279
    invoke-interface {v2, v0}, Lcom/twitter/util/concurrent/j;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 288
    return-void
.end method

.method d(Lcom/twitter/library/widget/InlineDismissView;Lcom/twitter/android/timeline/bp;)V
    .locals 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/twitter/android/ho;->b(Lcom/twitter/library/widget/InlineDismissView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-wide v0, p2, Lcom/twitter/android/timeline/bp;->n:J

    .line 297
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ho;->h(J)V

    .line 298
    iget-object v2, p0, Lcom/twitter/android/ho;->g:Lcom/twitter/library/client/bd;

    new-instance v3, Lbrs;

    iget-object v4, p0, Lcom/twitter/android/ho;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/twitter/android/ho;->f:Lcom/twitter/library/client/bk;

    .line 299
    invoke-virtual {v5}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v5

    .line 300
    invoke-virtual {p2}, Lcom/twitter/android/timeline/bp;->d()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lbrs;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    new-instance v4, Lcom/twitter/android/hs;

    invoke-direct {v4, p0, v0, v1, p2}, Lcom/twitter/android/hs;-><init>(Lcom/twitter/android/ho;JLcom/twitter/android/timeline/bp;)V

    .line 298
    invoke-virtual {v2, v3, v4}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 320
    :cond_0
    return-void
.end method

.method public d(J)Z
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/twitter/android/ho;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e(J)Z
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/twitter/android/ho;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method f(J)Lcom/twitter/model/timeline/i;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/twitter/android/ho;->m:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/i;

    return-object v0
.end method

.method g(J)Lcom/twitter/model/timeline/i;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/twitter/android/ho;->m:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/i;

    return-object v0
.end method

.method h(J)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/twitter/android/ho;->k:Lcom/twitter/util/concurrent/FutureMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/concurrent/FutureMap;->a(Ljava/lang/Object;)Ljava/util/concurrent/Future;

    .line 346
    return-void
.end method
