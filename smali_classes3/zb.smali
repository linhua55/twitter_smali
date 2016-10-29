.class public Lzb;
.super Lxz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxz",
        "<",
        "Lzg;",
        ">;"
    }
.end annotation


# instance fields
.field private final A:Landroid/view/View;

.field private final B:Lcom/twitter/android/media/widget/AttachmentMediaView;

.field private final C:Lcom/twitter/media/ui/AnimatingProgressBar;

.field private final D:Ljava/lang/String;

.field private final E:Landroid/text/style/CharacterStyle;

.field private final u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

.field private final v:Z

.field private final w:Z

.field private final x:Lcom/twitter/model/dms/ao;

.field private final y:Z

.field private final z:I


# direct methods
.method private constructor <init>(Lze;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lxz;-><init>(Lyl;)V

    .line 57
    invoke-static {p1}, Lze;->a(Lze;)Z

    move-result v0

    iput-boolean v0, p0, Lzb;->v:Z

    .line 58
    invoke-static {p1}, Lze;->b(Lze;)Lcom/twitter/model/dms/ao;

    move-result-object v0

    iput-object v0, p0, Lzb;->x:Lcom/twitter/model/dms/ao;

    .line 59
    invoke-static {p1}, Lze;->c(Lze;)Z

    move-result v0

    iput-boolean v0, p0, Lzb;->y:Z

    .line 60
    invoke-static {p1}, Lze;->d(Lze;)I

    move-result v0

    iput v0, p0, Lzb;->z:I

    .line 62
    iget-object v0, p1, Lze;->a:Lxa;

    check-cast v0, Lzg;

    .line 63
    invoke-static {v0}, Lzg;->a(Lzg;)Lcom/twitter/android/dm/widget/SentMessageBylineView;

    move-result-object v1

    iput-object v1, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    .line 64
    iget-object v1, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    instance-of v1, v1, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    iput-boolean v1, p0, Lzb;->w:Z

    .line 66
    invoke-static {v0}, Lzg;->b(Lzg;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lzb;->A:Landroid/view/View;

    .line 67
    invoke-static {v0}, Lzg;->c(Lzg;)Lcom/twitter/android/media/widget/AttachmentMediaView;

    move-result-object v1

    iput-object v1, p0, Lzb;->B:Lcom/twitter/android/media/widget/AttachmentMediaView;

    .line 68
    invoke-static {v0}, Lzg;->d(Lzg;)Lcom/twitter/media/ui/AnimatingProgressBar;

    move-result-object v0

    iput-object v0, p0, Lzb;->C:Lcom/twitter/media/ui/AnimatingProgressBar;

    .line 70
    iget-object v0, p0, Lzb;->g:Landroid/content/Context;

    const v1, 0x7f0a0281

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzb;->D:Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lzb;->E:Landroid/text/style/CharacterStyle;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lze;Lzc;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lzb;-><init>(Lze;)V

    return-void
.end method

.method static synthetic a(Lzb;)Lcom/twitter/android/dm/widget/SentMessageBylineView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 242
    iget-object v0, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->setDraftStatusColor(I)V

    .line 243
    return-void
.end method

.method private a(Lcom/twitter/model/drafts/DraftAttachment;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lzb;->B:Lcom/twitter/android/media/widget/AttachmentMediaView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/media/widget/AttachmentMediaView;->setClickable(Z)V

    .line 268
    iget-object v0, p0, Lzb;->A:Landroid/view/View;

    invoke-virtual {p0, v0}, Lzb;->a(Landroid/view/View;)V

    .line 270
    const/4 v0, 0x3

    .line 271
    invoke-virtual {p1, v0}, Lcom/twitter/model/drafts/DraftAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableMedia;

    .line 272
    iget-object v2, p0, Lzb;->B:Lcom/twitter/android/media/widget/AttachmentMediaView;

    invoke-virtual {v0}, Lcom/twitter/model/media/EditableMedia;->bo_()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/media/widget/AttachmentMediaView;->setAspectRatio(F)V

    .line 274
    invoke-virtual {v0}, Lcom/twitter/model/media/EditableMedia;->d()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lzb;->B:Lcom/twitter/android/media/widget/AttachmentMediaView;

    invoke-virtual {v2}, Lcom/twitter/android/media/widget/AttachmentMediaView;->getAttachmentMediaKey()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 275
    :goto_0
    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lzb;->B:Lcom/twitter/android/media/widget/AttachmentMediaView;

    new-instance v2, Lcom/twitter/android/media/selection/MediaAttachment;

    invoke-direct {v2, p1}, Lcom/twitter/android/media/selection/MediaAttachment;-><init>(Lcom/twitter/model/drafts/DraftAttachment;)V

    sget-object v3, Lcom/twitter/android/composer/ComposerType;->c:Lcom/twitter/android/composer/ComposerType;

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/media/widget/AttachmentMediaView;->a(Lcom/twitter/android/media/selection/MediaAttachment;Lcom/twitter/android/composer/ComposerType;)V

    .line 279
    :cond_0
    iget-boolean v0, p0, Lzb;->v:Z

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lzb;->C:Lcom/twitter/media/ui/AnimatingProgressBar;

    invoke-virtual {v0, p2}, Lcom/twitter/media/ui/AnimatingProgressBar;->setProgress(I)V

    .line 281
    iget-object v0, p0, Lzb;->C:Lcom/twitter/media/ui/AnimatingProgressBar;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/AnimatingProgressBar;->setVisibility(I)V

    .line 284
    :cond_1
    iget-object v0, p0, Lzb;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lzb;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lzb;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    return-void

    :cond_2
    move v0, v1

    .line 274
    goto :goto_0
.end method

.method static synthetic b(Lzb;)Landroid/text/style/CharacterStyle;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lzb;->E:Landroid/text/style/CharacterStyle;

    return-object v0
.end method

.method private b(Lcom/twitter/model/dms/l;Lcom/twitter/model/dms/l;)Z
    .locals 6

    .prologue
    .line 96
    iget-object v0, p0, Lzb;->x:Lcom/twitter/model/dms/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzb;->x:Lcom/twitter/model/dms/ao;

    .line 97
    invoke-virtual {p1}, Lcom/twitter/model/dms/l;->l()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/twitter/model/dms/l;->a()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/twitter/model/dms/ao;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lzb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lzb;->D:Ljava/lang/String;

    return-object v0
.end method

.method private d(Z)V
    .locals 3

    .prologue
    const v2, 0x7f0a0280

    .line 202
    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 203
    iget-object v1, p0, Lzb;->m:Lcom/twitter/android/dm/aa;

    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/twitter/android/dm/aa;->h(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->c()V

    .line 207
    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/bd;

    invoke-virtual {v0}, Lcom/twitter/model/dms/bd;->C()I

    move-result v0

    .line 209
    if-nez v0, :cond_2

    .line 210
    iget-boolean v0, p0, Lzb;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->y()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    if-nez p1, :cond_0

    .line 212
    invoke-direct {p0}, Lzb;->n()V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {p0}, Lzb;->l()Lcom/twitter/android/dm/widget/SentMessageBylineView;

    move-result-object v0

    iget-object v1, p0, Lzb;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->setDraftStatusText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 219
    iget-boolean v0, p0, Lzb;->v:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->y()Z

    move-result v0

    if-nez v0, :cond_4

    .line 220
    if-nez p1, :cond_3

    .line 221
    invoke-direct {p0}, Lzb;->n()V

    .line 229
    :cond_3
    :goto_1
    iget-object v0, p0, Lzb;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lzb;->g:Landroid/content/Context;

    const v2, 0x7f120087

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    const v0, 0x7f020137

    const v1, 0x7f120086

    invoke-virtual {p0, v0, v1}, Lzb;->a(II)V

    .line 231
    const v0, 0x7f120071

    invoke-direct {p0, v0}, Lzb;->a(I)V

    goto :goto_0

    .line 224
    :cond_4
    invoke-virtual {p0}, Lzb;->l()Lcom/twitter/android/dm/widget/SentMessageBylineView;

    move-result-object v0

    iget-object v1, p0, Lzb;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->setDraftStatusText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 227
    :cond_5
    invoke-virtual {p0}, Lzb;->l()Lcom/twitter/android/dm/widget/SentMessageBylineView;

    move-result-object v0

    iget-object v1, p0, Lzb;->g:Landroid/content/Context;

    const v2, 0x7f0a027f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->setDraftStatusText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private m()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    .line 178
    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bd;

    invoke-virtual {v0}, Lcom/twitter/model/dms/bd;->C()I

    move-result v0

    .line 177
    :goto_0
    return v0

    .line 178
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 183
    new-instance v0, Lzf;

    invoke-direct {v0, p0}, Lzf;-><init>(Lzb;)V

    .line 184
    iget-object v1, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    const v2, 0x7f130026

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->setTag(ILjava/lang/Object;)V

    .line 185
    iget-object v1, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lzb;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lzb;->l:Landroid/view/View;

    new-instance v1, Lzc;

    invoke-direct {v1, p0}, Lzc;-><init>(Lzb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 83
    invoke-super {p0}, Lxz;->a()V

    .line 84
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/bd;

    .line 256
    invoke-virtual {v0}, Lcom/twitter/model/dms/bd;->D()Lcom/twitter/model/drafts/DraftAttachment;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/twitter/model/dms/bd;->F()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lzb;->a(Lcom/twitter/model/drafts/DraftAttachment;I)V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-super {p0, p1}, Lxz;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 102
    iget-object v3, p0, Lzb;->l:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lzb;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    return-void

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1
.end method

.method a(Lcom/twitter/model/dms/l;Lcom/twitter/model/dms/l;)Z
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lzb;->b(Lcom/twitter/model/dms/l;Lcom/twitter/model/dms/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-super {p0, p1, p2}, Lxz;->a(Lcom/twitter/model/dms/l;Lcom/twitter/model/dms/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 114
    const v0, 0x7f120153

    invoke-direct {p0, v0}, Lzb;->a(I)V

    .line 117
    iget-boolean v0, p0, Lzb;->v:Z

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    const v1, 0x7f130026

    .line 119
    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 120
    if-nez v0, :cond_1

    move v1, v2

    .line 133
    :goto_0
    iget-object v3, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    const v4, 0x7f130023

    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->setTag(ILjava/lang/Object;)V

    .line 134
    iget-object v3, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    const v4, 0x7f130024

    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->setTag(ILjava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    const v3, 0x7f130021

    invoke-direct {p0}, Lzb;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->setTag(ILjava/lang/Object;)V

    move v6, v1

    .line 140
    :goto_1
    iget-object v0, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->setVisibility(I)V

    .line 142
    iget-boolean v0, p0, Lzb;->w:Z

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    iget-object v1, p0, Lzb;->x:Lcom/twitter/model/dms/ao;

    iget-object v2, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v2, Lcom/twitter/model/dms/l;

    iget-boolean v3, p0, Lzb;->y:Z

    iget v4, p0, Lzb;->z:I

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Lcom/twitter/model/dms/ao;Lcom/twitter/model/dms/l;ZIZ)V

    .line 145
    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lzb;->l:Landroid/view/View;

    new-instance v1, Lzd;

    invoke-direct {v1, p0}, Lzd;-><init>(Lzb;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :cond_0
    :goto_2
    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 158
    invoke-direct {p0, v6}, Lzb;->d(Z)V

    .line 163
    :goto_3
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lzb;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    invoke-virtual {v1, v0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move v1, v2

    .line 129
    goto/16 :goto_0

    :cond_3
    move v6, v2

    .line 137
    goto :goto_1

    .line 154
    :cond_4
    iget-object v0, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    iget-boolean v1, p0, Lzb;->y:Z

    invoke-virtual {v0, v1, p1}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->a(ZZ)V

    goto :goto_2

    .line 160
    :cond_5
    invoke-super {p0, p1}, Lxz;->b(Z)V

    .line 161
    invoke-virtual {p0}, Lzb;->e()V

    goto :goto_3
.end method

.method d()V
    .locals 3

    .prologue
    .line 108
    const v0, 0x7f020137

    const v1, 0x7f12008a

    invoke-virtual {p0, v0, v1}, Lzb;->a(II)V

    .line 109
    iget-object v0, p0, Lzb;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lzb;->g:Landroid/content/Context;

    const v2, 0x7f12008b

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    return-void
.end method

.method e()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lxz;->e()V

    .line 192
    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->q()Ljava/lang/String;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    iget-object v1, p0, Lzb;->m:Lcom/twitter/android/dm/aa;

    invoke-interface {v1, v0}, Lcom/twitter/android/dm/aa;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 194
    :goto_0
    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->d()V

    .line 199
    :goto_1
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    invoke-virtual {v0}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->b()V

    goto :goto_1
.end method

.method synthetic h()Lcom/twitter/android/dm/widget/MessageBylineView;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lzb;->l()Lcom/twitter/android/dm/widget/SentMessageBylineView;

    move-result-object v0

    return-object v0
.end method

.method j()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 247
    invoke-super {p0}, Lxz;->j()V

    .line 248
    iget-object v0, p0, Lzb;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lzb;->C:Lcom/twitter/media/ui/AnimatingProgressBar;

    invoke-virtual {v0, v1}, Lcom/twitter/media/ui/AnimatingProgressBar;->setVisibility(I)V

    .line 250
    return-void
.end method

.method k()Z
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->q()Ljava/lang/String;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    iget-object v1, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    const v2, 0x7f130023

    invoke-virtual {v1, v2}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzb;->a:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    .line 171
    invoke-virtual {v0}, Lcom/twitter/model/dms/l;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    const v2, 0x7f130024

    invoke-virtual {v1, v2}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lzb;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    const v2, 0x7f130021

    invoke-virtual {v1, v2}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 170
    :goto_0
    return v0

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()Lcom/twitter/android/dm/widget/SentMessageBylineView;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lzb;->u:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    return-object v0
.end method
