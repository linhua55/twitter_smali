.class public Labs;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Labr;


# instance fields
.field private final a:Lcom/twitter/android/media/selection/AttachMediaListener;

.field private final b:Lcom/twitter/android/media/selection/MediaAttachmentController;

.field private final c:Lcom/twitter/library/client/Session;

.field private final d:Labu;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/twitter/library/client/bd;

.field private final g:Lauf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lauf",
            "<",
            "Lcom/twitter/android/composer/ax;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/twitter/model/timeline/cx;

.field private final i:Lcom/twitter/library/scribe/ScribeItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Labu;Lcom/twitter/android/media/selection/MediaAttachmentController;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/bd;Lauf;Lcom/twitter/model/timeline/cx;Lcom/twitter/library/scribe/TwitterScribeItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Labu;",
            "Lcom/twitter/android/media/selection/MediaAttachmentController;",
            "Lcom/twitter/library/client/Session;",
            "Lcom/twitter/library/client/bd;",
            "Lauf",
            "<",
            "Lcom/twitter/android/composer/ax;",
            ">;",
            "Lcom/twitter/model/timeline/cx;",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Labs;->e:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Labs;->d:Labu;

    .line 75
    iput-object p3, p0, Labs;->b:Lcom/twitter/android/media/selection/MediaAttachmentController;

    .line 76
    iput-object p6, p0, Labs;->g:Lauf;

    .line 77
    invoke-interface {p2}, Labu;->e()Lcom/twitter/android/media/selection/AttachMediaListener;

    move-result-object v0

    iput-object v0, p0, Labs;->a:Lcom/twitter/android/media/selection/AttachMediaListener;

    .line 78
    iput-object p4, p0, Labs;->c:Lcom/twitter/library/client/Session;

    .line 79
    iput-object p5, p0, Labs;->f:Lcom/twitter/library/client/bd;

    .line 80
    iput-object p7, p0, Labs;->h:Lcom/twitter/model/timeline/cx;

    .line 81
    iput-object p8, p0, Labs;->i:Lcom/twitter/library/scribe/ScribeItem;

    .line 82
    return-void
.end method

.method private a(Lcom/twitter/model/drafts/d;)V
    .locals 6

    .prologue
    .line 143
    iget-object v0, p0, Labs;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 145
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 146
    invoke-virtual {v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->i()Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v0

    iget-object v1, p0, Labs;->i:Lcom/twitter/library/scribe/ScribeItem;

    .line 147
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "tweet:composition:::send_reply"

    aput-object v5, v1, v4

    .line 148
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    .line 149
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 150
    sget-object v0, Lcom/twitter/android/composer/ComposerType;->b:Lcom/twitter/android/composer/ComposerType;

    iget-object v1, p1, Lcom/twitter/model/drafts/d;->d:Ljava/util/List;

    invoke-static {v2, v3, v0, v1}, Lcom/twitter/android/composer/bk;->a(JLcom/twitter/android/composer/ComposerType;Ljava/util/List;)V

    .line 151
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 106
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 107
    invoke-virtual {p0}, Labs;->k()V

    .line 108
    iget-object v0, p0, Labs;->d:Labu;

    invoke-interface {v0}, Labu;->a()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 110
    invoke-virtual {p0}, Labs;->l()V

    .line 111
    iget-object v0, p0, Labs;->d:Labu;

    invoke-interface {v0}, Labu;->a()V

    goto :goto_0
.end method

.method a(Lcom/twitter/android/composer/ax;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Labs;->d:Labu;

    invoke-interface {v0}, Labu;->aJ_()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/twitter/android/composer/ax;->a(Ljava/lang/String;I)Lcom/twitter/android/composer/ax;

    .line 102
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/android/media/selection/MediaAttachment;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Labs;->b:Lcom/twitter/android/media/selection/MediaAttachmentController;

    iget-object v1, p0, Labs;->a:Lcom/twitter/android/media/selection/AttachMediaListener;

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/media/selection/MediaAttachmentController;->a(Lcom/twitter/android/media/selection/MediaAttachment;Lcom/twitter/android/media/selection/AttachMediaListener;)V

    .line 131
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 188
    invoke-virtual {p0}, Labs;->i()V

    .line 189
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p0}, Labs;->h()V

    .line 194
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 199
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Labs;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 200
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ":composition::add_photo:click"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 201
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 202
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 207
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Labs;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 208
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ":composition::remove_photo:click"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 209
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 210
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Labs;->d:Labu;

    invoke-interface {v0}, Labu;->aI_()V

    .line 215
    return-void
.end method

.method public g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 117
    iget-object v1, p0, Labs;->d:Labu;

    invoke-interface {v1}, Labu;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v1, p0, Labs;->d:Labu;

    invoke-interface {v1}, Labu;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Labs;->d:Labu;

    invoke-interface {v1}, Labu;->d()V

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/twitter/android/composer/ax;->a()Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Labs;->j()Lcom/twitter/model/drafts/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(Lcom/twitter/model/drafts/d;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p0, Labs;->d:Labu;

    .line 87
    invoke-interface {v1}, Labu;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a(Z)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p0, Labs;->c:Lcom/twitter/library/client/Session;

    .line 88
    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->b(Ljava/lang/String;)Lcom/twitter/android/composer/ax;

    move-result-object v0

    iget-object v1, p0, Labs;->d:Labu;

    .line 89
    invoke-interface {v1}, Labu;->m()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/composer/ax;->a([I)Lcom/twitter/android/composer/ax;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Labs;->a(Lcom/twitter/android/composer/ax;)V

    .line 93
    iget-object v1, p0, Labs;->d:Labu;

    invoke-interface {v1}, Labu;->k()V

    .line 94
    iget-object v1, p0, Labs;->g:Lauf;

    invoke-virtual {v1, v0}, Lauf;->b(Lauc;)V

    .line 95
    return-void
.end method

.method i()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Labs;->d:Labu;

    invoke-interface {v0}, Labu;->l()V

    .line 135
    invoke-virtual {p0}, Labs;->j()Lcom/twitter/model/drafts/d;

    move-result-object v0

    .line 136
    iget-object v1, p0, Labs;->e:Landroid/content/Context;

    iget-object v2, p0, Labs;->c:Lcom/twitter/library/client/Session;

    invoke-static {v1, v2, v0}, Lcom/twitter/android/client/bv;->a(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/drafts/d;)Ljava/lang/String;

    .line 137
    invoke-direct {p0, v0}, Labs;->a(Lcom/twitter/model/drafts/d;)V

    .line 138
    iget-object v0, p0, Labs;->d:Labu;

    invoke-interface {v0}, Labu;->k()V

    .line 139
    return-void
.end method

.method j()Lcom/twitter/model/drafts/d;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/twitter/model/drafts/e;

    invoke-direct {v0}, Lcom/twitter/model/drafts/e;-><init>()V

    iget-object v1, p0, Labs;->d:Labu;

    .line 156
    invoke-interface {v1}, Labu;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Ljava/lang/String;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    iget-object v1, p0, Labs;->d:Labu;

    .line 157
    invoke-interface {v1}, Labu;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Ljava/util/List;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    iget-object v1, p0, Labs;->d:Labu;

    .line 158
    invoke-interface {v1}, Labu;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->b(Ljava/util/List;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    iget-object v1, p0, Labs;->h:Lcom/twitter/model/timeline/cx;

    .line 159
    invoke-virtual {v0, v1}, Lcom/twitter/model/drafts/e;->a(Lcom/twitter/model/timeline/cx;)Lcom/twitter/model/drafts/e;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/twitter/model/drafts/e;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/drafts/d;

    .line 155
    return-object v0
.end method

.method k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    invoke-virtual {p0}, Labs;->j()Lcom/twitter/model/drafts/d;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/twitter/android/composer/ca;

    iget-object v2, p0, Labs;->e:Landroid/content/Context;

    iget-object v3, p0, Labs;->c:Lcom/twitter/library/client/Session;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/twitter/android/composer/ca;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/drafts/d;Z)V

    .line 167
    sget-object v0, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->g:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    invoke-virtual {v1, v0}, Lcom/twitter/android/composer/ca;->a(Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)V

    .line 168
    iget-object v0, p0, Labs;->f:Lcom/twitter/library/client/bd;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Labs;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 170
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "tweet"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "cancel_reply_sheet"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "save_draft"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "click"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 171
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 172
    return-void
.end method

.method l()V
    .locals 4

    .prologue
    .line 176
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Labs;->c:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    .line 177
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "tweet"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "composition"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "cancel_reply_sheet"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "dont_save"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "click"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    .line 178
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 179
    return-void
.end method
