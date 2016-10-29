.class public Ltv/periscope/android/ui/broadcast/ParticipantCountView;
.super Landroid/view/ViewGroup;
.source "Twttr"


# instance fields
.field private a:I

.field private final b:Ltv/periscope/android/view/PsTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    sget v1, Ltv/periscope/android/library/k;->ps__ic_participants:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    new-instance v1, Ltv/periscope/android/view/PsTextView;

    invoke-direct {v1, p1}, Ltv/periscope/android/view/PsTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->b:Ltv/periscope/android/view/PsTextView;

    .line 46
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->b:Ltv/periscope/android/view/PsTextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ltv/periscope/android/view/PsTextView;->setTextColor(I)V

    .line 47
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->b:Ltv/periscope/android/view/PsTextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v3}, Ltv/periscope/android/view/PsTextView;->setTextSize(IF)V

    .line 48
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->b:Ltv/periscope/android/view/PsTextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Ltv/periscope/android/view/PsTextView;->setGravity(I)V

    .line 49
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->b:Ltv/periscope/android/view/PsTextView;

    const-string/jumbo v2, "fonts/MuseoSans-700.otf"

    invoke-virtual {v1, v2}, Ltv/periscope/android/view/PsTextView;->setCustomFont(Ljava/lang/String;)V

    .line 51
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 52
    invoke-virtual {p0, v0, v1}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 55
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 56
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->b:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {p0, v1, v0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    return-void
.end method

.method private a(I)I
    .locals 4

    .prologue
    .line 137
    const-string/jumbo v1, ""

    .line 138
    const/4 v0, 0x3

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 139
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->b:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {v0}, Ltv/periscope/android/view/PsTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 148
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 13

    .prologue
    .line 90
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->getChildCount()I

    move-result v5

    .line 92
    sub-int v0, p4, p2

    .line 93
    sub-int v6, p5, p3

    .line 95
    iget v1, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->a:I

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    .line 98
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->a()Z

    move-result v1

    .line 99
    if-eqz v1, :cond_0

    add-int/lit8 v0, v5, -0x1

    move v4, v0

    .line 100
    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, -0x1

    move v1, v0

    .line 102
    :goto_1
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v5, :cond_5

    .line 103
    mul-int v0, v1, v3

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 105
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v8, 0x8

    if-ne v0, v8, :cond_2

    move v0, v2

    .line 102
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_2

    .line 99
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 110
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 111
    sub-int v0, v6, v9

    div-int/lit8 v10, v0, 0x2

    .line 113
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 115
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x11

    if-lt v11, v12, :cond_3

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v11

    add-int/2addr v2, v11

    .line 121
    :goto_4
    add-int v11, v2, v8

    add-int/2addr v9, v10

    invoke-virtual {v7, v2, v10, v11, v9}, Landroid/view/View;->layout(IIII)V

    .line 123
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v7, v9, :cond_4

    .line 124
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    add-int/2addr v0, v2

    .line 128
    :goto_5
    add-int/2addr v0, v8

    goto :goto_3

    .line 118
    :cond_3
    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v11

    goto :goto_4

    .line 126
    :cond_4
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    goto :goto_5

    .line 130
    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 61
    .line 65
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->getChildCount()I

    move-result v6

    move v5, v0

    move v2, v0

    move v3, v0

    move v4, v0

    .line 66
    :goto_0
    if-ge v5, v6, :cond_2

    .line 67
    invoke-virtual {p0, v5}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 68
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move v0, v2

    move v1, v3

    move v2, v4

    .line 66
    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v4, v2

    move v3, v1

    move v2, v0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v7, p1, p2}, Landroid/view/View;->measure(II)V

    .line 74
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->b:Ltv/periscope/android/view/PsTextView;

    if-ne v7, v0, :cond_1

    .line 75
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->b:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {v0}, Ltv/periscope/android/view/PsTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->a(I)I

    move-result v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->b:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {v1}, Ltv/periscope/android/view/PsTextView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->b:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {v1}, Ltv/periscope/android/view/PsTextView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    .line 79
    :goto_2
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 80
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    .line 81
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v8

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int v1, v4, v0

    .line 82
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v1

    move v1, v3

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    move v1, v0

    goto :goto_2

    .line 84
    :cond_2
    iput v3, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->a:I

    .line 85
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->setMeasuredDimension(II)V

    .line 86
    return-void

    :cond_3
    move v0, v2

    move v1, v3

    move v2, v4

    goto :goto_1
.end method

.method public setNumParticipants(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->b:Ltv/periscope/android/view/PsTextView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/view/PsTextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method
