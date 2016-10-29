.class public Ltv/periscope/android/ui/broadcast/ChatComposer;
.super Landroid/widget/LinearLayout;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/EditText;

.field private d:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View$OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ltv/periscope/android/ui/chat/ar;

.field private g:Ltv/periscope/android/ui/chat/aq;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Ltv/periscope/android/ui/chat/ChatState;

.field private l:Ltv/periscope/android/ui/chat/ChatState;

.field private m:Landroid/app/Dialog;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Ltv/periscope/android/view/MaskImageView;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Ldmy;

.field private u:Z

.field private v:Ltv/periscope/model/chat/Message;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->e:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->u:Z

    .line 70
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->a(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->e:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->u:Z

    .line 75
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->a(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->e:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->u:Z

    .line 80
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->a(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/ChatComposer;)Ltv/periscope/android/ui/chat/ChatState;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->k:Ltv/periscope/android/ui/chat/ChatState;

    return-object v0
.end method

.method private a(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 394
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 395
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 396
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 397
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 118
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__chat_composer:I

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 120
    sget v0, Ltv/periscope/android/library/l;->participants:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->s:Landroid/view/View;

    .line 122
    sget v0, Ltv/periscope/android/library/l;->line:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->r:Landroid/view/View;

    .line 124
    sget v0, Ltv/periscope/android/library/l;->cross:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->b:Landroid/view/View;

    .line 125
    sget v0, Ltv/periscope/android/library/l;->comment_send_container:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->a:Landroid/view/View;

    .line 127
    sget v0, Ltv/periscope/android/library/l;->compose_layout:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->q:Landroid/view/View;

    .line 128
    sget v0, Ltv/periscope/android/library/l;->compose_comment:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->c:Landroid/widget/EditText;

    .line 129
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->c:Landroid/widget/EditText;

    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 130
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/k;->ps__ic_private:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->j:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->j:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 134
    :cond_0
    sget v0, Ltv/periscope/android/library/l;->masked_avatar:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/MaskImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->p:Ltv/periscope/android/view/MaskImageView;

    .line 135
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/j;->ps__card_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 137
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ltv/periscope/android/util/v;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->p:Ltv/periscope/android/view/MaskImageView;

    const/4 v2, 0x4

    new-array v2, v2, [F

    aput v4, v2, v5

    aput v0, v2, v6

    aput v0, v2, v7

    aput v4, v2, v8

    invoke-virtual {v1, v2}, Ltv/periscope/android/view/MaskImageView;->setCornerRadius([F)V

    .line 143
    :goto_0
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/k;->ps__bg_chat_overlay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->i:Landroid/graphics/drawable/Drawable;

    .line 145
    sget v0, Ltv/periscope/android/library/l;->chat_status:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    new-instance v1, Ltv/periscope/android/ui/broadcast/av;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/broadcast/av;-><init>(Ltv/periscope/android/ui/broadcast/ChatComposer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    sget v0, Ltv/periscope/android/library/l;->button_container:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ltv/periscope/android/ui/broadcast/aw;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/broadcast/aw;-><init>(Ltv/periscope/android/ui/broadcast/ChatComposer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    sget-object v0, Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;->a:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->d:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    .line 201
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 203
    new-instance v0, Ltv/periscope/android/ui/broadcast/ax;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcast/ax;-><init>(Ltv/periscope/android/ui/broadcast/ChatComposer;)V

    .line 213
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 215
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__chat_state_dialog:I

    .line 216
    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 217
    sget v0, Ltv/periscope/android/library/l;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->n:Landroid/widget/TextView;

    .line 218
    sget v0, Ltv/periscope/android/library/l;->message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->o:Landroid/widget/TextView;

    .line 219
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->m:Landroid/app/Dialog;

    .line 222
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->p:Ltv/periscope/android/view/MaskImageView;

    const/4 v2, 0x4

    new-array v2, v2, [F

    aput v0, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    aput v0, v2, v8

    invoke-virtual {v1, v2}, Ltv/periscope/android/view/MaskImageView;->setCornerRadius([F)V

    goto/16 :goto_0
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/ChatComposer;II)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/ChatComposer;->a(II)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 248
    sget-object v0, Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;->a:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->d:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    .line 249
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->c:Landroid/widget/EditText;

    invoke-static {v0}, Ltv/periscope/android/util/l;->a(Landroid/view/View;)V

    .line 251
    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->c()V

    .line 257
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->q:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/ChatComposer;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->u:Z

    return p1
.end method

.method static synthetic b(Ltv/periscope/android/ui/broadcast/ChatComposer;)Ltv/periscope/android/ui/chat/aq;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->g:Ltv/periscope/android/ui/chat/aq;

    return-object v0
.end method

.method static synthetic c(Ltv/periscope/android/ui/broadcast/ChatComposer;)Ltv/periscope/model/chat/Message;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->v:Ltv/periscope/model/chat/Message;

    return-object v0
.end method

.method static synthetic d(Ltv/periscope/android/ui/broadcast/ChatComposer;)Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->d:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    return-object v0
.end method

.method static synthetic e(Ltv/periscope/android/ui/broadcast/ChatComposer;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Ltv/periscope/android/ui/broadcast/ChatComposer;)Ltv/periscope/android/ui/chat/ar;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->f:Ltv/periscope/android/ui/chat/ar;

    return-object v0
.end method

.method static synthetic g(Ltv/periscope/android/ui/broadcast/ChatComposer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Ltv/periscope/android/ui/broadcast/ChatComposer;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->q:Landroid/view/View;

    return-object v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->c:Landroid/widget/EditText;

    invoke-static {v0}, Ltv/periscope/android/util/l;->b(Landroid/view/View;)V

    .line 294
    sget-object v0, Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;->b:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->d:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    .line 295
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->a()V

    .line 296
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 313
    sget-object v0, Ltv/periscope/android/ui/broadcast/ba;->a:[I

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->k:Ltv/periscope/android/ui/chat/ChatState;

    invoke-virtual {v1}, Ltv/periscope/android/ui/chat/ChatState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 348
    :goto_0
    return-void

    .line 315
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    sget v1, Ltv/periscope/android/library/p;->ps__broadcast_too_full:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 316
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 320
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    sget v1, Ltv/periscope/android/library/p;->ps__connecting:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 321
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 325
    :pswitch_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    sget v1, Ltv/periscope/android/library/p;->ps__comment_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 326
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 330
    :pswitch_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    sget v1, Ltv/periscope/android/library/p;->ps__broadcast_limited:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 331
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 336
    :pswitch_4
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/j;->ps__btn_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 338
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 343
    :pswitch_5
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    sget v1, Ltv/periscope/android/library/p;->ps__connection_error:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 229
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->d:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;->a:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->u:Z

    if-eqz v0, :cond_1

    .line 233
    sget-object v0, Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;->c:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->d:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    .line 234
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_1
    sget-object v0, Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;->b:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->d:Ltv/periscope/android/ui/broadcast/ChatComposer$ComposeState;

    .line 238
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 431
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->p:Ltv/periscope/android/view/MaskImageView;

    invoke-virtual {v0, p2}, Ltv/periscope/android/view/MaskImageView;->setColorFilter(I)V

    .line 432
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->t:Ldmy;

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->p:Ltv/periscope/android/view/MaskImageView;

    invoke-interface {v0, v1, p1, v2}, Ldmy;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 433
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 262
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 263
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->q:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 264
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 265
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 266
    new-instance v0, Ltv/periscope/android/ui/broadcast/ay;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcast/ay;-><init>(Ltv/periscope/android/ui/broadcast/ChatComposer;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 274
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 275
    return-void

    .line 262
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 263
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method c()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 278
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 279
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->q:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 280
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 281
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 282
    new-instance v0, Ltv/periscope/android/ui/broadcast/az;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcast/az;-><init>(Ltv/periscope/android/ui/broadcast/ChatComposer;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 290
    return-void

    .line 278
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 279
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public d()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 372
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->a(Z)V

    .line 376
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->j()V

    .line 377
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->i()V

    .line 382
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 400
    invoke-virtual {p0, v1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    return-void
.end method

.method public getChatState()Ltv/periscope/android/ui/chat/ChatState;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->k:Ltv/periscope/android/ui/chat/ChatState;

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 410
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->r:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 437
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->r:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Ltv/periscope/android/library/l;->compose_comment:I

    if-ne v0, v1, :cond_0

    .line 94
    if-eqz p2, :cond_1

    .line 95
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->k()V

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 101
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 100
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 97
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->a(Z)V

    goto :goto_0

    .line 103
    :cond_2
    return-void
.end method

.method public setChatState(Ltv/periscope/android/ui/chat/ChatState;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->k:Ltv/periscope/android/ui/chat/ChatState;

    sget-object v1, Ltv/periscope/android/ui/chat/ChatState;->f:Ltv/periscope/android/ui/chat/ChatState;

    if-ne v0, v1, :cond_1

    .line 302
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->l:Ltv/periscope/android/ui/chat/ChatState;

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->k:Ltv/periscope/android/ui/chat/ChatState;

    if-eq v0, p1, :cond_0

    .line 306
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->k:Ltv/periscope/android/ui/chat/ChatState;

    .line 307
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->l()V

    goto :goto_0
.end method

.method public setChatStatus(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    return-void
.end method

.method public setImageLoader(Ldmy;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->t:Ldmy;

    .line 107
    return-void
.end method

.method public setLocalPunishmentPrompt(Ltv/periscope/model/chat/Message;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->v:Ltv/periscope/model/chat/Message;

    .line 445
    return-void
.end method

.method public setPunishmentStatusDelegate(Ltv/periscope/android/ui/chat/aq;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->g:Ltv/periscope/android/ui/chat/aq;

    .line 115
    return-void
.end method

.method public setSendCommentDelegate(Ltv/periscope/android/ui/chat/ar;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->f:Ltv/periscope/android/ui/chat/ar;

    .line 111
    return-void
.end method

.method public setSendEnabled(Z)V
    .locals 0

    .prologue
    .line 225
    iput-boolean p1, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->u:Z

    .line 226
    return-void
.end method

.method public setUpReply(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->k:Ltv/periscope/android/ui/chat/ChatState;

    sget-object v1, Ltv/periscope/android/ui/chat/ChatState;->e:Ltv/periscope/android/ui/chat/ChatState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->k:Ltv/periscope/android/ui/chat/ChatState;

    sget-object v1, Ltv/periscope/android/ui/chat/ChatState;->f:Ltv/periscope/android/ui/chat/ChatState;

    if-ne v0, v1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->c:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatComposer;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 427
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->b()V

    goto :goto_0
.end method
