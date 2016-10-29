.class public Lcom/twitter/android/av/watchmode/view/TweetSummaryView;
.super Landroid/widget/LinearLayout;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Lcom/twitter/ui/widget/TypefacesTextView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final c:Lcom/twitter/ui/widget/TypefacesTextView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final d:Lcom/twitter/ui/widget/TypefacesTextView;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Lcom/twitter/android/widget/EngagementActionBar;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field g:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final h:Lcom/twitter/android/av/al;

.field private i:Lcom/twitter/android/av/ah;

.field private final j:Landroid/content/res/Resources;

.field private final k:Lcom/twitter/android/av/watchmode/view/d;

.field private l:Lcom/twitter/model/core/Tweet;

.field private m:F

.field private n:Lcav;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    .line 85
    new-instance v4, Lcom/twitter/android/av/al;

    invoke-direct {v4}, Lcom/twitter/android/av/al;-><init>()V

    new-instance v5, Lcom/twitter/android/av/watchmode/view/d;

    invoke-direct {v5}, Lcom/twitter/android/av/watchmode/view/d;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/android/av/al;Lcom/twitter/android/av/watchmode/view/d;)V

    .line 86
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/twitter/android/av/al;Lcom/twitter/android/av/watchmode/view/d;)V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->f:Landroid/graphics/drawable/Drawable;

    .line 72
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->m:F

    .line 93
    invoke-virtual {p0, v4}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->setOrientation(I)V

    .line 94
    const v0, 0x7f040407

    invoke-static {p1, v0, p0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 96
    const v0, 0x7f1307b0

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->a:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f1307b1

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->b:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 98
    const v0, 0x7f1307b2

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->c:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 99
    const v0, 0x7f1307b3

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TypefacesTextView;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->d:Lcom/twitter/ui/widget/TypefacesTextView;

    .line 100
    const v0, 0x7f130134

    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/EngagementActionBar;

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->e:Lcom/twitter/android/widget/EngagementActionBar;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->j:Landroid/content/res/Resources;

    .line 103
    invoke-static {p1}, Lcom/twitter/ui/widget/ax;->a(Landroid/content/Context;)Lcom/twitter/ui/widget/ax;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->b:Lcom/twitter/ui/widget/TypefacesTextView;

    iget-object v2, v0, Lcom/twitter/ui/widget/ax;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/twitter/ui/widget/TypefacesTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->c:Lcom/twitter/ui/widget/TypefacesTextView;

    iget-object v2, v0, Lcom/twitter/ui/widget/ax;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/twitter/ui/widget/TypefacesTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->d:Lcom/twitter/ui/widget/TypefacesTextView;

    iget-object v0, v0, Lcom/twitter/ui/widget/ax;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TypefacesTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    iput-object p4, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->h:Lcom/twitter/android/av/al;

    .line 108
    iput-object p5, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->k:Lcom/twitter/android/av/watchmode/view/d;

    .line 109
    invoke-virtual {p0, p0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v4, [I

    const v2, 0x101030e

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 114
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->f:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    return-void

    .line 119
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static a(FLcom/twitter/android/av/watchmode/view/TweetSummaryView;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 179
    const/high16 v0, 0x3f400000    # 0.75f

    sub-float v0, p0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->setAlpha(F)V

    .line 180
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->e:Lcom/twitter/android/widget/EngagementActionBar;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->l:Lcom/twitter/model/core/Tweet;

    if-eqz v0, :cond_0

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "tw"

    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->l:Lcom/twitter/model/core/Tweet;

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 208
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method a(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->g:I

    .line 134
    iput-object p1, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->l:Lcom/twitter/model/core/Tweet;

    .line 135
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->e:Lcom/twitter/android/widget/EngagementActionBar;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/EngagementActionBar;->setTweet(Lcom/twitter/model/core/Tweet;)V

    .line 136
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/twitter/model/core/Tweet;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->b:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->j:Landroid/content/res/Resources;

    iget-wide v2, p1, Lcom/twitter/model/core/Tweet;->m:J

    invoke-static {v1, v2, v3}, Lcom/twitter/util/al;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->c:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v2, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->k:Lcom/twitter/android/av/watchmode/view/d;

    invoke-virtual {v1, p1}, Lcom/twitter/android/av/watchmode/view/d;->a(Lcom/twitter/model/core/Tweet;)Lcom/twitter/library/provider/aq;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v4}, Lcom/twitter/library/provider/aq;->e(Z)Lcom/twitter/library/provider/aq;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v4}, Lcom/twitter/library/provider/aq;->a(Z)Lcom/twitter/library/provider/aq;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/twitter/library/provider/aq;->a()Lcom/twitter/model/core/i;

    move-result-object v1

    iget-object v1, v1, Lcom/twitter/model/core/i;->a:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->d:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v2, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    instance-of v0, p3, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->h:Lcom/twitter/android/av/al;

    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->l:Lcom/twitter/model/core/Tweet;

    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->e:Lcom/twitter/android/widget/EngagementActionBar;

    new-instance v3, Lcom/twitter/android/av/watchmode/view/i;

    invoke-direct {v3, p2, p3, p1}, Lcom/twitter/android/av/watchmode/view/i;-><init>(Lcom/twitter/library/scribe/TwitterScribeAssociation;Landroid/content/Context;Lcom/twitter/model/core/Tweet;)V

    iget-object v4, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->n:Lcav;

    .line 151
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/av/al;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/android/widget/EngagementActionBar;Lcom/twitter/android/av/ak;Lcav;)Lcom/twitter/android/av/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->i:Lcom/twitter/android/av/ah;

    .line 153
    check-cast p3, Landroid/support/v4/app/FragmentActivity;

    .line 154
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->i:Lcom/twitter/android/av/ah;

    invoke-virtual {v0, p3}, Lcom/twitter/android/av/ah;->a(Landroid/content/Context;)V

    .line 155
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->i:Lcom/twitter/android/av/ah;

    invoke-virtual {v0, p3}, Lcom/twitter/android/av/ah;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 156
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->i:Lcom/twitter/android/av/ah;

    invoke-virtual {v0, p1}, Lcom/twitter/android/av/ah;->a(Lcom/twitter/model/core/Tweet;)V

    .line 158
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 264
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->j:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->l:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->m:J

    .line 265
    invoke-static {v0, v2, v3}, Lcom/twitter/util/al;->b(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 266
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->c:Lcom/twitter/ui/widget/TypefacesTextView;

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TypefacesTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 268
    const-string/jumbo v0, ""

    .line 269
    if-eqz p1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->l:Lcom/twitter/model/core/Tweet;

    iget-object v3, v3, Lcom/twitter/model/core/Tweet;->w:Ljava/lang/String;

    invoke-static {v3}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    iget-object v2, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->j:Landroid/content/res/Resources;

    const v3, 0x7f0a08c5

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string/jumbo v1, ""

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string/jumbo v1, ""

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {p0, v0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 277
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 216
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 217
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->invalidate()V

    .line 218
    return-void
.end method

.method protected getPreferredHeight()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->g:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 203
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 229
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->g:I

    if-nez v0, :cond_0

    .line 186
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 187
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->g:I

    .line 190
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->m:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->g:I

    if-nez v0, :cond_2

    .line 191
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_2
    iget v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->m:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 196
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 223
    iget-object v0, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 224
    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 0

    .prologue
    .line 165
    iput p1, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->m:F

    .line 166
    invoke-static {p1, p0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->a(FLcom/twitter/android/av/watchmode/view/TweetSummaryView;)V

    .line 167
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->requestLayout()V

    .line 168
    return-void
.end method

.method public setHeartAnimationOverlay(Lcav;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/twitter/android/av/watchmode/view/TweetSummaryView;->n:Lcav;

    .line 248
    return-void
.end method
