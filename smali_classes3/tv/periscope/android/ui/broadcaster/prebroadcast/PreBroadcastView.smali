.class public Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;
.super Landroid/widget/LinearLayout;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ltv/periscope/android/ui/broadcaster/prebroadcast/c;


# instance fields
.field private final a:Landroid/widget/EditText;

.field private final b:Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Ltv/periscope/android/view/PsImageView;

.field private final f:Ltv/periscope/android/view/PulseAnimationView;

.field private final g:Ltv/periscope/android/view/PsImageView;

.field private final h:Ltv/periscope/android/view/PsImageView;

.field private final i:Ltv/periscope/android/view/bd;

.field private final j:I

.field private final k:Landroid/text/TextWatcher;

.field private l:Ltv/periscope/android/ui/broadcaster/prebroadcast/d;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Ltv/periscope/android/ui/broadcaster/prebroadcast/a;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/a;-><init>(Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->k:Landroid/text/TextWatcher;

    .line 74
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__pre_broadcast_details:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 76
    invoke-virtual {p0, v2}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->setOrientation(I)V

    .line 78
    sget v0, Ltv/periscope/android/library/l;->edit_broadcast_title:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->a:Landroid/widget/EditText;

    .line 80
    sget v0, Ltv/periscope/android/library/l;->broadcast_tip:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->b:Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;

    .line 81
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->b:Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->b:Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;->setCloseBtnVisibility(I)V

    .line 83
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->b:Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;

    new-instance v1, Ltv/periscope/android/ui/broadcaster/prebroadcast/b;

    invoke-direct {v1, p0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/b;-><init>(Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;)V

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/view/BroadcastTipView;->setCloseBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_0
    sget v0, Ltv/periscope/android/library/l;->public_text:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->c:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v0, Ltv/periscope/android/library/l;->lock:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->d:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget v0, Ltv/periscope/android/library/l;->location:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/PsImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->e:Ltv/periscope/android/view/PsImageView;

    .line 100
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->e:Ltv/periscope/android/view/PsImageView;

    invoke-virtual {v0, p0}, Ltv/periscope/android/view/PsImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget v0, Ltv/periscope/android/library/l;->location_container:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/PulseAnimationView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->f:Ltv/periscope/android/view/PulseAnimationView;

    .line 103
    sget v0, Ltv/periscope/android/library/l;->following_chat:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/PsImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->g:Ltv/periscope/android/view/PsImageView;

    .line 104
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->g:Ltv/periscope/android/view/PsImageView;

    invoke-virtual {v0, p0}, Ltv/periscope/android/view/PsImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget v0, Ltv/periscope/android/library/l;->tweet:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/view/PsImageView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->h:Ltv/periscope/android/view/PsImageView;

    .line 107
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->h:Ltv/periscope/android/view/PsImageView;

    invoke-virtual {v0, p0}, Ltv/periscope/android/view/PsImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 110
    new-instance v1, Ltv/periscope/android/view/bd;

    invoke-direct {v1, p1}, Ltv/periscope/android/view/bd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->i:Ltv/periscope/android/view/bd;

    .line 111
    iget-object v1, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->i:Ltv/periscope/android/view/bd;

    sget v2, Ltv/periscope/android/library/j;->ps__tooltip_max_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ltv/periscope/android/view/bd;->a(I)V

    .line 112
    sget v1, Ltv/periscope/android/library/j;->ps__tooltip_prebroadcast_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->j:I

    .line 113
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;)Ltv/periscope/android/ui/broadcaster/prebroadcast/d;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->l:Ltv/periscope/android/ui/broadcaster/prebroadcast/d;

    return-object v0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->l:Ltv/periscope/android/ui/broadcaster/prebroadcast/d;

    if-nez v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 239
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->l:Ltv/periscope/android/ui/broadcaster/prebroadcast/d;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/d;->c()V

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 241
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->l:Ltv/periscope/android/ui/broadcaster/prebroadcast/d;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/d;->d()V

    goto :goto_0

    .line 242
    :cond_3
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->e:Ltv/periscope/android/view/PsImageView;

    if-ne p1, v0, :cond_4

    .line 243
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->l:Ltv/periscope/android/ui/broadcaster/prebroadcast/d;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/d;->e()V

    goto :goto_0

    .line 244
    :cond_4
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->g:Ltv/periscope/android/view/PsImageView;

    if-ne p1, v0, :cond_5

    .line 245
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->l:Ltv/periscope/android/ui/broadcaster/prebroadcast/d;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/d;->f()V

    goto :goto_0

    .line 246
    :cond_5
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->h:Ltv/periscope/android/view/PsImageView;

    if-ne p1, v0, :cond_0

    .line 247
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->l:Ltv/periscope/android/ui/broadcaster/prebroadcast/d;

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcaster/prebroadcast/d;->g()V

    goto :goto_0
.end method

.method public setListener(Ltv/periscope/android/ui/broadcaster/prebroadcast/d;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->l:Ltv/periscope/android/ui/broadcaster/prebroadcast/d;

    .line 118
    return-void
.end method

.method public setPublicActivated(Z)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 134
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public setTwitterVisibility(I)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->h:Ltv/periscope/android/view/PsImageView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/view/PsImageView;->setVisibility(I)V

    .line 184
    iput p1, p0, Ltv/periscope/android/ui/broadcaster/prebroadcast/PreBroadcastView;->m:I

    .line 185
    return-void
.end method
