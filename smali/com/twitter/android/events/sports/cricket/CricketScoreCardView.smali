.class public Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;
.super Landroid/widget/RelativeLayout;
.source "Twttr"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/twitter/library/media/widget/UserImageView;

.field private final f:Lcom/twitter/library/media/widget/UserImageView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/widget/TextView;

.field private final l:Landroid/widget/TextView;

.field private final m:Landroid/widget/TextView;

.field private final n:Landroid/widget/TextView;

.field private final o:Landroid/widget/TextView;

.field private final p:Landroid/widget/TextView;

.field private final q:Landroid/content/Context;

.field private final r:Lcom/twitter/android/util/p;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v0, Lcom/twitter/android/util/p;

    invoke-direct {v0}, Lcom/twitter/android/util/p;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->r:Lcom/twitter/android/util/p;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040098

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    const v0, 0x7f1302a8

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->b:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f1302a7

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->c:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f1302a9

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->d:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f045f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 83
    const v0, 0x7f1302ac

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->e:Lcom/twitter/library/media/widget/UserImageView;

    .line 84
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->e:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setSize(I)V

    .line 85
    const v0, 0x7f1302b1

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/media/widget/UserImageView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->f:Lcom/twitter/library/media/widget/UserImageView;

    .line 86
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->f:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->setSize(I)V

    .line 87
    const v0, 0x7f1302ae

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->g:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f1302b3

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->h:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f1302af

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->i:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f1302b4

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->j:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f1302b0

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->k:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f1302b5

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->l:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f1302aa

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->m:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f1302ab

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->n:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f1302ad

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->o:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f1302b2

    invoke-virtual {p0, v0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->p:Landroid/widget/TextView;

    .line 98
    iput-object p1, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->q:Landroid/content/Context;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->q:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x4

    .line 102
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->s:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_1
    return-void

    .line 102
    :sswitch_0
    const-string/jumbo v4, "IN_PROGRESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "SCHEDULED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "COMPLETED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 120
    :pswitch_1
    new-array v3, v1, [I

    .line 121
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 122
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->b:Landroid/widget/TextView;

    .line 123
    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    .line 124
    :goto_2
    iget-object v1, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    iget-object v4, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getRight()I

    move-result v4

    if-le v1, v4, :cond_3

    iget-object v1, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->b:Landroid/widget/TextView;

    .line 125
    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    .line 126
    :goto_3
    iget-object v4, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->o:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getRight()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    if-gt v4, v0, :cond_1

    add-int/lit8 v0, v1, 0x28

    aget v1, v3, v2

    if-le v0, v1, :cond_4

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_4
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    goto :goto_2

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    goto :goto_3

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 148
    :pswitch_2
    new-array v0, v1, [I

    .line 149
    iget-object v1, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 150
    iget-object v1, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    if-gt v1, v3, :cond_5

    iget-object v1, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->c:Landroid/widget/TextView;

    .line 151
    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    aget v0, v0, v2

    if-le v1, v0, :cond_6

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :goto_5
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 102
    :sswitch_data_0
    .sparse-switch
        -0x637c2f73 -> :sswitch_1
        -0x2408abf9 -> :sswitch_0
        0x5279062b -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/view/View;JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 290
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 292
    new-instance v0, Lcom/twitter/android/events/sports/cricket/a;

    invoke-direct {v0, p0, p2, p3}, Lcom/twitter/android/events/sports/cricket/a;-><init>(Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/android/widget/TopicView$TopicData;)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x2

    const/16 v11, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 201
    iget-object v0, p1, Lcom/twitter/android/widget/TopicView$TopicData;->m:[B

    sget-object v1, Lcom/twitter/model/topic/d;->a:Lcom/twitter/util/serialization/ah;

    .line 202
    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/g;

    .line 205
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/twitter/model/topic/g;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/twitter/model/topic/g;->h:Ljava/util/List;

    if-nez v1, :cond_1

    .line 206
    :cond_0
    invoke-virtual {p0, v11}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->setVisibility(I)V

    .line 287
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0, v5}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->setVisibility(I)V

    .line 212
    iget-object v2, v0, Lcom/twitter/model/topic/g;->h:Ljava/util/List;

    .line 213
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/topic/a;

    .line 214
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/topic/a;

    .line 215
    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 216
    :cond_2
    invoke-virtual {p0, v11}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->setVisibility(I)V

    goto :goto_0

    .line 220
    :cond_3
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->e:Lcom/twitter/library/media/widget/UserImageView;

    iget-object v8, v1, Lcom/twitter/model/topic/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 221
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->f:Lcom/twitter/library/media/widget/UserImageView;

    iget-object v8, v2, Lcom/twitter/model/topic/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 222
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->e:Lcom/twitter/library/media/widget/UserImageView;

    iget-wide v8, v1, Lcom/twitter/model/topic/a;->h:J

    iget-object v10, v1, Lcom/twitter/model/topic/a;->c:Ljava/lang/String;

    invoke-direct {p0, v3, v8, v9, v10}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->a(Landroid/view/View;JLjava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->f:Lcom/twitter/library/media/widget/UserImageView;

    iget-wide v8, v2, Lcom/twitter/model/topic/a;->h:J

    iget-object v10, v2, Lcom/twitter/model/topic/a;->c:Ljava/lang/String;

    invoke-direct {p0, v3, v8, v9, v10}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->a(Landroid/view/View;JLjava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->g:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/twitter/model/topic/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->h:Landroid/widget/TextView;

    iget-object v8, v2, Lcom/twitter/model/topic/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const-string/jumbo v3, "IN_PROGRESS"

    iget-object v8, v0, Lcom/twitter/model/topic/g;->f:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "COMPLETED"

    iget-object v8, v0, Lcom/twitter/model/topic/g;->f:Ljava/lang/String;

    .line 229
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 230
    :cond_4
    iget-object v3, v1, Lcom/twitter/model/topic/a;->d:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/twitter/model/topic/a;->d:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 231
    :cond_5
    invoke-virtual {p0, v11}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->setVisibility(I)V

    goto :goto_0

    .line 234
    :cond_6
    iget-object v3, v1, Lcom/twitter/model/topic/a;->d:Ljava/lang/String;

    sget-object v8, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->a:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 235
    iget-object v3, v2, Lcom/twitter/model/topic/a;->d:Ljava/lang/String;

    sget-object v9, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->a:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 236
    iget-object v10, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->i:Landroid/widget/TextView;

    aget-object v3, v8, v5

    invoke-static {v3}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string/jumbo v3, "-"

    :goto_1
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v10, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->j:Landroid/widget/TextView;

    aget-object v3, v9, v5

    invoke-static {v3}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v3, "-"

    :goto_2
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v10, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->k:Landroid/widget/TextView;

    array-length v3, v8

    if-le v3, v6, :cond_c

    aget-object v3, v8, v6

    :goto_3
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->l:Landroid/widget/TextView;

    array-length v8, v9

    if-le v8, v6, :cond_7

    aget-object v4, v9, v6

    :cond_7
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_8
    iget-object v4, v0, Lcom/twitter/model/topic/g;->f:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_9
    :goto_4
    packed-switch v3, :pswitch_data_0

    .line 280
    invoke-virtual {p0, v11}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->setVisibility(I)V

    goto/16 :goto_0

    .line 236
    :cond_a
    aget-object v3, v8, v5

    goto :goto_1

    .line 237
    :cond_b
    aget-object v3, v9, v5

    goto :goto_2

    :cond_c
    move-object v3, v4

    .line 238
    goto :goto_3

    .line 242
    :sswitch_0
    const-string/jumbo v8, "IN_PROGRESS"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v3, v5

    goto :goto_4

    :sswitch_1
    const-string/jumbo v8, "COMPLETED"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v3, v6

    goto :goto_4

    :sswitch_2
    const-string/jumbo v8, "SCHEDULED"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v3, v7

    goto :goto_4

    .line 247
    :pswitch_0
    iget-object v3, v1, Lcom/twitter/model/topic/a;->d:Ljava/lang/String;

    const-string/jumbo v4, "/50"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 248
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->m:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/twitter/model/topic/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/twitter/model/topic/a;->d:Ljava/lang/String;

    const-string/jumbo v7, "|"

    const-string/jumbo v8, " ("

    .line 249
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v1, Lcom/twitter/model/topic/a;->d:Ljava/lang/String;

    .line 250
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v7, "/50"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :goto_5
    iget-object v1, v2, Lcom/twitter/model/topic/a;->d:Ljava/lang/String;

    const-string/jumbo v3, "/50"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 257
    iget-object v1, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->n:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/twitter/model/topic/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/twitter/model/topic/a;->d:Ljava/lang/String;

    const-string/jumbo v6, "|"

    const-string/jumbo v7, " ("

    .line 258
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lcom/twitter/model/topic/a;->d:Ljava/lang/String;

    .line 259
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v6, "/50"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v2, v6

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_6
    iget-object v1, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/twitter/model/topic/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v1, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/twitter/model/topic/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_7
    :pswitch_1
    iget-object v0, v0, Lcom/twitter/model/topic/g;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->s:Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 286
    invoke-direct {p0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->a()V

    goto/16 :goto_0

    .line 253
    :cond_d
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->m:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/twitter/model/topic/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcom/twitter/model/topic/a;->d:Ljava/lang/String;

    const-string/jumbo v6, "|"

    const-string/jumbo v7, " "

    .line 254
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 262
    :cond_e
    iget-object v1, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->n:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/twitter/model/topic/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/twitter/model/topic/a;->d:Ljava/lang/String;

    const-string/jumbo v4, "|"

    const-string/jumbo v5, " "

    .line 263
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 271
    :pswitch_2
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->o:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/twitter/model/topic/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->p:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/twitter/model/topic/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-wide v8, p1, Lcom/twitter/android/widget/TopicView$TopicData;->l:J

    .line 274
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->r:Lcom/twitter/android/util/p;

    iget-object v4, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v8, v9, v6}, Lcom/twitter/android/util/p;->a(Landroid/widget/TextView;JZ)V

    .line 275
    iget-object v3, p0, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f0a0234

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/twitter/model/topic/a;->b:Ljava/lang/String;

    aput-object v1, v7, v5

    iget-object v1, v2, Lcom/twitter/model/topic/a;->b:Ljava/lang/String;

    aput-object v1, v7, v6

    invoke-virtual {v4, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 242
    :sswitch_data_0
    .sparse-switch
        -0x637c2f73 -> :sswitch_2
        -0x2408abf9 -> :sswitch_0
        0x5279062b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 194
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 198
    :cond_0
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->a()V

    .line 188
    invoke-virtual {p0}, Lcom/twitter/android/events/sports/cricket/CricketScoreCardView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 189
    const/4 v0, 0x1

    return v0
.end method
