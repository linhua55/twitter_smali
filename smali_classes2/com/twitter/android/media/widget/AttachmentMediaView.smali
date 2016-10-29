.class public Lcom/twitter/android/media/widget/AttachmentMediaView;
.super Lcom/twitter/library/media/widget/EditableMediaView;
.source "Twttr"


# instance fields
.field private k:Landroid/net/Uri;

.field private l:Z

.field private m:Ljava/io/File;

.field private n:Z

.field private o:Lcom/twitter/android/media/widget/f;

.field private final p:Lcom/twitter/android/media/widget/MediaEditButtonContainer;

.field private final q:Z

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f010029

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/media/widget/AttachmentMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/library/media/widget/EditableMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-direct {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->s()Lcom/twitter/android/media/widget/MediaEditButtonContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->p:Lcom/twitter/android/media/widget/MediaEditButtonContainer;

    .line 64
    sget-object v0, Lcom/twitter/android/mu;->AttachmentMediaView:[I

    .line 65
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->q:Z

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/twitter/library/media/widget/EditableMediaView;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->s()Lcom/twitter/android/media/widget/MediaEditButtonContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->p:Lcom/twitter/android/media/widget/MediaEditButtonContainer;

    .line 54
    iput-boolean p2, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->q:Z

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/media/widget/AttachmentMediaView;)Lcom/twitter/android/media/widget/f;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->o:Lcom/twitter/android/media/widget/f;

    return-object v0
.end method

.method private b(Lcom/twitter/android/media/selection/MediaAttachment;Lcom/twitter/android/composer/ComposerType;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 84
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/twitter/android/media/selection/MediaAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v3

    .line 85
    if-nez v3, :cond_0

    .line 167
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/twitter/android/media/widget/a;

    invoke-direct {v0, p0, v3}, Lcom/twitter/android/media/widget/a;-><init>(Lcom/twitter/android/media/widget/AttachmentMediaView;Lcom/twitter/model/media/EditableMedia;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->getDismissView()Landroid/view/View;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    new-instance v2, Lcom/twitter/android/media/widget/b;

    invoke-direct {v2, p0}, Lcom/twitter/android/media/widget/b;-><init>(Lcom/twitter/android/media/widget/AttachmentMediaView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->p:Lcom/twitter/android/media/widget/MediaEditButtonContainer;

    const v2, 0x7f130287

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/widget/MediaEditButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->p:Lcom/twitter/android/media/widget/MediaEditButtonContainer;

    const v4, 0x7f130286

    invoke-virtual {v2, v4}, Lcom/twitter/android/media/widget/MediaEditButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-boolean v4, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->q:Z

    if-eqz v4, :cond_3

    iget v4, p1, Lcom/twitter/android/media/selection/MediaAttachment;->a:I

    if-nez v4, :cond_3

    .line 117
    invoke-virtual {v3}, Lcom/twitter/model/media/EditableMedia;->g()Lcom/twitter/media/model/MediaType;

    move-result-object v4

    .line 118
    sget-object v5, Lcom/twitter/media/model/MediaType;->c:Lcom/twitter/media/model/MediaType;

    if-eq v4, v5, :cond_2

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    new-instance v5, Lcom/twitter/android/media/widget/c;

    invoke-direct {v5, p0, v3}, Lcom/twitter/android/media/widget/c;-><init>(Lcom/twitter/android/media/widget/AttachmentMediaView;Lcom/twitter/model/media/EditableMedia;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_2
    sget-object v0, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    if-ne v4, v0, :cond_3

    sget-object v0, Lcom/twitter/android/composer/ComposerType;->c:Lcom/twitter/android/composer/ComposerType;

    if-ne p2, v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcbd;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    new-instance v0, Lcom/twitter/android/media/widget/d;

    invoke-direct {v0, p0, v3}, Lcom/twitter/android/media/widget/d;-><init>(Lcom/twitter/android/media/widget/AttachmentMediaView;Lcom/twitter/model/media/EditableMedia;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_3
    iget-boolean v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->q:Z

    if-eqz v0, :cond_6

    .line 145
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->j()Lcom/twitter/model/account/UserSettings;

    move-result-object v0

    .line 146
    if-nez v0, :cond_5

    .line 147
    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "compose_alt_text"

    .line 148
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_2
    move v2, v0

    .line 153
    :goto_3
    iget-object v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->p:Lcom/twitter/android/media/widget/MediaEditButtonContainer;

    const v4, 0x7f130284

    invoke-virtual {v0, v4}, Lcom/twitter/android/media/widget/MediaEditButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 154
    if-eqz v2, :cond_7

    iget v2, p1, Lcom/twitter/android/media/selection/MediaAttachment;->a:I

    if-nez v2, :cond_7

    invoke-virtual {v3}, Lcom/twitter/model/media/EditableMedia;->g()Lcom/twitter/media/model/MediaType;

    move-result-object v2

    sget-object v4, Lcom/twitter/media/model/MediaType;->b:Lcom/twitter/media/model/MediaType;

    if-ne v2, v4, :cond_7

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    new-instance v1, Lcom/twitter/android/media/widget/e;

    invoke-direct {v1, p0, v3}, Lcom/twitter/android/media/widget/e;-><init>(Lcom/twitter/android/media/widget/AttachmentMediaView;Lcom/twitter/model/media/EditableMedia;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 129
    goto :goto_1

    .line 148
    :cond_5
    iget-boolean v0, v0, Lcom/twitter/model/account/UserSettings;->r:Z

    goto :goto_2

    :cond_6
    move v2, v1

    .line 151
    goto :goto_3

    .line 165
    :cond_7
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private b(Lcom/twitter/model/media/EditableMedia;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-object v0, p1, Lcom/twitter/model/media/EditableMedia;->k:Lcom/twitter/media/model/MediaFile;

    iget-object v0, v0, Lcom/twitter/media/model/MediaFile;->d:Ljava/io/File;

    iput-object v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->m:Ljava/io/File;

    .line 307
    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->getDismissView()Landroid/view/View;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/twitter/library/media/util/w;->a(Landroid/content/Context;Lcom/twitter/model/media/EditableMedia;)Lcom/twitter/media/request/b;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/twitter/android/media/widget/AttachmentMediaView;->b(Lcom/twitter/media/request/b;Z)Z

    .line 313
    return-void
.end method

.method private s()Lcom/twitter/android/media/widget/MediaEditButtonContainer;
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040088

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    const v0, 0x7f130283

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/widget/MediaEditButtonContainer;

    return-object v0
.end method

.method private t()V
    .locals 3

    .prologue
    .line 294
    const v0, 0x7f130284

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 295
    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->getEditableMedia()Lcom/twitter/model/media/EditableMedia;

    move-result-object v1

    .line 296
    if-eqz v0, :cond_1

    instance-of v2, v1, Lcom/twitter/model/core/a;

    if-eqz v2, :cond_1

    .line 297
    check-cast v1, Lcom/twitter/model/core/a;

    .line 298
    invoke-interface {v1}, Lcom/twitter/model/core/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a01f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 303
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/media/selection/MediaAttachment;Lcom/twitter/android/composer/ComposerType;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 178
    if-nez p1, :cond_1

    .line 179
    invoke-virtual {p0, v4, v2}, Lcom/twitter/android/media/widget/AttachmentMediaView;->a(Lcom/twitter/model/media/EditableMedia;Z)Z

    .line 180
    iput-object v4, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->m:Ljava/io/File;

    .line 181
    iput-boolean v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->n:Z

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/media/widget/AttachmentMediaView;->b(Lcom/twitter/android/media/selection/MediaAttachment;Lcom/twitter/android/composer/ComposerType;)V

    .line 187
    iget-object v1, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->k:Landroid/net/Uri;

    .line 188
    invoke-virtual {p1}, Lcom/twitter/android/media/selection/MediaAttachment;->a()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->k:Landroid/net/Uri;

    .line 189
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->k:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    move v1, v2

    .line 190
    :goto_1
    if-eqz v1, :cond_3

    .line 191
    iput-boolean v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->l:Z

    .line 192
    iput-object v4, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->m:Ljava/io/File;

    .line 195
    :cond_3
    iget v0, p1, Lcom/twitter/android/media/selection/MediaAttachment;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 197
    :pswitch_1
    const/4 v0, 0x2

    .line 198
    invoke-virtual {p1, v0}, Lcom/twitter/android/media/selection/MediaAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableMedia;

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/media/widget/AttachmentMediaView;->a(Lcom/twitter/model/media/EditableMedia;Z)Z

    goto :goto_0

    :cond_4
    move v1, v0

    .line 189
    goto :goto_1

    .line 203
    :pswitch_2
    invoke-virtual {p1, v2}, Lcom/twitter/android/media/selection/MediaAttachment;->a(I)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0, v0, v1}, Lcom/twitter/android/media/widget/AttachmentMediaView;->b(Lcom/twitter/model/media/EditableMedia;Z)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/twitter/media/request/ImageResponse;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/twitter/media/request/ImageResponse;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/request/a;

    invoke-virtual {v0}, Lcom/twitter/media/request/a;->d()Lcom/twitter/media/model/MediaFile;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/twitter/media/model/MediaFile;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->m:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 220
    if-eqz p2, :cond_0

    .line 221
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->n:Z

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/twitter/library/media/widget/EditableMediaView;->a(Lcom/twitter/media/request/ImageResponse;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected a(Lcom/twitter/media/request/a;)Z
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/twitter/media/request/a;->d()Lcom/twitter/media/model/MediaFile;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/twitter/media/model/MediaFile;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->m:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-boolean v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->n:Z

    .line 256
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/library/media/widget/EditableMediaView;->a(Lcom/twitter/media/request/a;)Z

    move-result v0

    goto :goto_0
.end method

.method public aP_()V
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->l:Z

    if-eqz v0, :cond_0

    .line 232
    invoke-super {p0}, Lcom/twitter/library/media/widget/EditableMediaView;->aP_()V

    .line 236
    :goto_0
    invoke-direct {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->t()V

    .line 237
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->requestLayout()V

    goto :goto_0
.end method

.method public aS_()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->p:Lcom/twitter/android/media/widget/MediaEditButtonContainer;

    invoke-virtual {v0}, Lcom/twitter/android/media/widget/MediaEditButtonContainer;->a()V

    .line 76
    return-void
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 286
    iget v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->r:I

    if-lt v0, v2, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01f8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->r:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 291
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-super {p0}, Lcom/twitter/library/media/widget/EditableMediaView;->b()V

    goto :goto_0
.end method

.method public getAttachmentMediaKey()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->k:Landroid/net/Uri;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->l:Z

    .line 247
    invoke-super/range {p0 .. p5}, Lcom/twitter/library/media/widget/EditableMediaView;->onLayout(ZIIII)V

    .line 248
    return-void
.end method

.method public setMediaAttachment(Lcom/twitter/android/media/selection/MediaAttachment;)V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->a(Lcom/twitter/android/media/selection/MediaAttachment;Lcom/twitter/android/composer/ComposerType;)V

    .line 175
    return-void
.end method

.method public setOnAttachmentActionListener(Lcom/twitter/android/media/widget/f;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->o:Lcom/twitter/android/media/widget/f;

    .line 171
    return-void
.end method

.method public setPhotoNumber(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 260
    iput p1, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->r:I

    .line 261
    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->b()V

    .line 263
    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 264
    invoke-virtual {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->getDismissView()Landroid/view/View;

    move-result-object v2

    .line 265
    if-eqz v2, :cond_0

    .line 266
    if-lt p1, v5, :cond_1

    const v0, 0x7f0a01f2

    new-array v3, v5, [Ljava/lang/Object;

    .line 267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->p:Lcom/twitter/android/media/widget/MediaEditButtonContainer;

    const v2, 0x7f130286

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/widget/MediaEditButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 272
    if-lt p1, v5, :cond_2

    const v0, 0x7f0a0200

    new-array v3, v5, [Ljava/lang/Object;

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->p:Lcom/twitter/android/media/widget/MediaEditButtonContainer;

    const v2, 0x7f130287

    invoke-virtual {v0, v2}, Lcom/twitter/android/media/widget/MediaEditButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 277
    if-lt p1, v5, :cond_3

    const v0, 0x7f0a01f5

    new-array v3, v5, [Ljava/lang/Object;

    .line 278
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 281
    invoke-direct {p0}, Lcom/twitter/android/media/widget/AttachmentMediaView;->t()V

    .line 282
    return-void

    .line 267
    :cond_1
    const v0, 0x7f0a00c9

    .line 268
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_2
    const v0, 0x7f0a01ff

    .line 274
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 278
    :cond_3
    const v0, 0x7f0a01f4

    .line 279
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public setVisibleAreaContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/media/widget/AttachmentMediaView;->p:Lcom/twitter/android/media/widget/MediaEditButtonContainer;

    invoke-virtual {v0, p1}, Lcom/twitter/android/media/widget/MediaEditButtonContainer;->setVisibleAreaContainer(Landroid/view/ViewGroup;)V

    .line 72
    return-void
.end method
