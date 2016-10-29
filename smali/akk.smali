.class public Lakk;
.super Lakl;
.source "Twttr"


# instance fields
.field private final c:Landroid/content/res/Resources;

.field private d:Lakj;

.field private e:Lcom/twitter/android/periscope/u;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ProgressBar;

.field private h:Lcom/twitter/library/media/widget/UserImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageButton;

.field private q:Lcom/twitter/android/widget/TweetStatView;

.field private r:Lcom/twitter/android/widget/TweetStatView;

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lakl;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)V

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lakk;->c:Landroid/content/res/Resources;

    .line 53
    return-void
.end method

.method private static a(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/twitter/util/a;->a(Landroid/content/Context;)Z

    move-result v0

    .line 176
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 177
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 178
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lakk;->l:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/ui/view/p;->a(Landroid/widget/TextView;)V

    .line 126
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 108
    iget-object v0, p0, Lakk;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    return-void
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lakk;->q:Lcom/twitter/android/widget/TweetStatView;

    iget-object v1, p0, Lakk;->c:Landroid/content/res/Resources;

    invoke-static {v1, p1, p2}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetStatView;->setValue(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lakk;->r:Lcom/twitter/android/widget/TweetStatView;

    iget-object v1, p0, Lakk;->c:Landroid/content/res/Resources;

    invoke-static {v1, p3, p4}, Lcom/twitter/util/s;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetStatView;->setValue(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lakk;->q:Lcom/twitter/android/widget/TweetStatView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/TweetStatView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lakk;->r:Lcom/twitter/android/widget/TweetStatView;

    invoke-virtual {v0, v2}, Lcom/twitter/android/widget/TweetStatView;->setVisibility(I)V

    .line 153
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lakk;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method protected a(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 57
    const v0, 0x7f1304ee

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lakk;->f:Landroid/view/View;

    .line 58
    const v0, 0x7f1304e5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lakk;->g:Landroid/widget/ProgressBar;

    .line 59
    const v0, 0x7f1302fb

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lakk;->h:Lcom/twitter/library/media/widget/UserImageView;

    .line 60
    const v0, 0x7f1304b1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lakk;->i:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f1304b8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lakk;->j:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f1304ac

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lakk;->k:Landroid/view/View;

    .line 63
    const v0, 0x7f1304ef

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lakk;->l:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f1304f0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lakk;->m:Landroid/view/View;

    .line 65
    const v0, 0x7f1304f1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lakk;->n:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f1304f2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lakk;->o:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f130052

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lakk;->p:Landroid/widget/ImageButton;

    .line 68
    const v0, 0x7f1304f3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetStatView;

    iput-object v0, p0, Lakk;->q:Lcom/twitter/android/widget/TweetStatView;

    .line 69
    const v0, 0x7f1304f4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetStatView;

    iput-object v0, p0, Lakk;->r:Lcom/twitter/android/widget/TweetStatView;

    .line 70
    iget-object v0, p0, Lakk;->r:Lcom/twitter/android/widget/TweetStatView;

    iget-object v1, p0, Lakk;->c:Landroid/content/res/Resources;

    const v2, 0x7f0a068b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetStatView;->setName(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lakk;->q:Lcom/twitter/android/widget/TweetStatView;

    iget-object v1, p0, Lakk;->c:Landroid/content/res/Resources;

    const v2, 0x7f0a068c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetStatView;->setName(Ljava/lang/CharSequence;)V

    .line 73
    const v0, 0x7f1304f5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 76
    iget-boolean v1, p0, Lakk;->s:Z

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Lakj;

    invoke-direct {v1, v0}, Lakj;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lakk;->d:Lakj;

    .line 78
    iget-object v1, p0, Lakk;->d:Lakj;

    invoke-virtual {v1}, Lakj;->aK_()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lakk;->a(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 81
    :cond_0
    iget-boolean v1, p0, Lakk;->t:Z

    if-eqz v1, :cond_1

    .line 82
    new-instance v1, Lcom/twitter/android/periscope/u;

    invoke-direct {v1, v0}, Lcom/twitter/android/periscope/u;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lakk;->e:Lcom/twitter/android/periscope/u;

    .line 83
    iget-object v1, p0, Lakk;->e:Lcom/twitter/android/periscope/u;

    invoke-virtual {v1}, Lcom/twitter/android/periscope/u;->aK_()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lakk;->a(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 85
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lakk;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lakk;->h:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, p1}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 101
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lakk;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    return-void

    .line 88
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b()Lakj;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lakk;->d:Lakj;

    return-object v0
.end method

.method public b(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 137
    iget-object v0, p0, Lakk;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 138
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lakk;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lakk;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 92
    iget-object v1, p0, Lakk;->g:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    return-void

    .line 92
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public c()Lcom/twitter/android/periscope/u;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lakk;->e:Lcom/twitter/android/periscope/u;

    return-object v0
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lakk;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lakk;->l:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/twitter/ui/view/p;->a(Landroid/widget/TextView;)V

    .line 122
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lakk;->k:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    return-void

    .line 112
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lakk;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lakk;->l:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    return-void

    .line 116
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lakk;->m:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    return-void

    .line 129
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lakk;->s:Z

    .line 157
    return-void
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 160
    iput-boolean p1, p0, Lakk;->t:Z

    .line 161
    return-void
.end method
