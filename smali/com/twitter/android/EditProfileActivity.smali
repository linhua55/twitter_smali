.class public Lcom/twitter/android/EditProfileActivity;
.super Lcom/twitter/android/BaseEditProfileActivity;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Landroid/widget/Filterable;
.implements Lcom/twitter/android/ih;
.implements Lcom/twitter/internal/android/widget/ag;


# instance fields
.field private A:Lcom/twitter/model/profile/ExtendedProfile;

.field private B:Lcom/twitter/android/ig;

.field private C:Lcom/twitter/android/LocationState;

.field private D:Ljava/util/regex/Pattern;

.field protected m:Landroid/widget/EditText;

.field protected n:Landroid/widget/EditText;

.field protected o:Lcom/twitter/ui/widget/TwitterEditText;

.field protected p:Landroid/widget/CheckBox;

.field protected q:Lcom/twitter/internal/android/widget/PopupEditText;

.field protected r:Landroid/widget/ImageView;

.field protected s:Z

.field private t:Landroid/widget/ScrollView;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Lcom/twitter/model/profile/ExtendedProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/twitter/android/BaseEditProfileActivity;-><init>()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->s:Z

    return-void
.end method

.method private A()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 484
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-interface {v0}, Lcom/twitter/android/ig;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 486
    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->t:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    .line 487
    aget v1, v0, v5

    .line 488
    iget-object v2, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v2, v0}, Lcom/twitter/internal/android/widget/PopupEditText;->getLocationOnScreen([I)V

    .line 489
    iget-object v2, p0, Lcom/twitter/android/EditProfileActivity;->t:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/EditProfileActivity;->t:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    aget v0, v0, v5

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 492
    :cond_0
    return-void
.end method

.method private B()Z
    .locals 8

    .prologue
    .line 495
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 496
    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v1, v0}, Lcom/twitter/internal/android/widget/PopupEditText;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 497
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->Y()Lcom/twitter/internal/android/widget/ToolBar;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/ToolBar;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v1}, Lcom/twitter/internal/android/widget/PopupEditText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 498
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0288

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    cmpl-double v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 497
    :goto_0
    return v0

    .line 498
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->A()V

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->b()V

    goto :goto_0
.end method

.method private D()V
    .locals 6

    .prologue
    .line 512
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->ae()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/EditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    .line 513
    invoke-virtual {v2}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/twitter/android/EditProfileActivity;->b:Lcom/twitter/android/profiles/ao;

    invoke-virtual {v4}, Lcom/twitter/android/profiles/ao;->e()J

    move-result-wide v4

    .line 512
    invoke-interface/range {v0 .. v5}, Lcom/twitter/android/ig;->a(Ljava/lang/String;JJ)V

    .line 514
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/EditProfileActivity;)Lcom/twitter/android/ig;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    return-object v0
.end method

.method private a(Landroid/content/res/Resources;)Lcom/twitter/library/media/widget/UserImageView;
    .locals 7

    .prologue
    const v6, 0x7f0f03bf

    const/4 v5, -0x1

    .line 432
    new-instance v1, Lcom/twitter/library/media/widget/UserImageView;

    invoke-direct {v1, p0}, Lcom/twitter/library/media/widget/UserImageView;-><init>(Landroid/content/Context;)V

    .line 433
    const v0, 0x7f130153

    invoke-virtual {v1, v0}, Lcom/twitter/library/media/widget/UserImageView;->setId(I)V

    .line 434
    invoke-static {p1, v1}, Lcom/twitter/android/profiles/as;->a(Landroid/content/res/Resources;Lcom/twitter/library/media/widget/UserImageView;)V

    .line 436
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 437
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 438
    invoke-virtual {v1}, Lcom/twitter/library/media/widget/UserImageView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/ui/image/RichImageView;

    .line 439
    invoke-virtual {v0}, Lcom/twitter/media/ui/image/RichImageView;->getCornerRadii()[F

    move-result-object v0

    .line 440
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    const/4 v4, 0x0

    aget v0, v0, v4

    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 441
    const v0, 0x7f120072

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 442
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 444
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 446
    invoke-virtual {v1, v2}, Lcom/twitter/library/media/widget/UserImageView;->addView(Landroid/view/View;)V

    .line 448
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->r:Landroid/widget/ImageView;

    .line 449
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->r:Landroid/widget/ImageView;

    const v2, 0x7f020595

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 451
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 452
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 453
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 454
    iget-object v2, p0, Lcom/twitter/android/EditProfileActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Lcom/twitter/library/media/widget/UserImageView;->addView(Landroid/view/View;)V

    .line 456
    return-object v1

    .line 440
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/twitter/android/EditProfileActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/twitter/android/EditProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 348
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/twitter/model/core/bm;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 615
    invoke-static {p0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    const/4 p0, 0x0

    .line 628
    :cond_0
    return-object p0

    .line 617
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/lang/Iterable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    const/4 v0, 0x0

    .line 622
    iget-object v1, p1, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v1}, Lcom/twitter/model/core/j;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    .line 623
    iget v3, v0, Lcom/twitter/model/core/cx;->g:I

    add-int/2addr v3, v1

    iget v4, v0, Lcom/twitter/model/core/cx;->h:I

    add-int/2addr v4, v1

    .line 624
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 625
    iget-object v4, v0, Lcom/twitter/model/core/cx;->F:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 626
    iget-object v3, v0, Lcom/twitter/model/core/cx;->F:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v0, Lcom/twitter/model/core/cx;->h:I

    iget v0, v0, Lcom/twitter/model/core/cx;->g:I

    sub-int v0, v4, v0

    sub-int v0, v3, v0

    add-int/2addr v0, v1

    move v1, v0

    .line 627
    goto :goto_0
.end method

.method private a(JLcom/twitter/model/profile/ExtendedProfile;Lcom/twitter/model/profile/ExtendedProfile;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 692
    if-eqz p3, :cond_2

    .line 693
    invoke-virtual {p3}, Lcom/twitter/model/profile/ExtendedProfile;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v1

    .line 694
    :goto_0
    if-eqz p4, :cond_3

    .line 695
    invoke-virtual {p4}, Lcom/twitter/model/profile/ExtendedProfile;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 696
    :goto_1
    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    .line 697
    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "birthday"

    const-string/jumbo v6, "add"

    .line 698
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 697
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 727
    :cond_0
    :goto_2
    invoke-static {p4}, Lbug;->a(Lcom/twitter/model/profile/ExtendedProfile;)Lcom/twitter/model/profile/d;

    move-result-object v0

    .line 728
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/twitter/model/profile/d;->e:Z

    .line 729
    invoke-static {p3, v3}, Lbug;->a(Lcom/twitter/model/profile/ExtendedProfile;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 731
    new-instance v3, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v3, p1, p2}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v5, ""

    const-string/jumbo v6, "vine"

    iget-boolean v0, v0, Lcom/twitter/model/profile/d;->e:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "add"

    .line 732
    :goto_3
    invoke-static {v4, v5, v6, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 731
    invoke-virtual {v3, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 735
    :cond_1
    return-void

    :cond_2
    move v3, v2

    .line 693
    goto :goto_0

    :cond_3
    move v0, v2

    .line 695
    goto :goto_1

    .line 699
    :cond_4
    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    .line 700
    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "birthday"

    const-string/jumbo v6, "delete"

    .line 701
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 700
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    goto :goto_2

    .line 702
    :cond_5
    if-eqz v3, :cond_0

    invoke-virtual {p3, p4}, Lcom/twitter/model/profile/ExtendedProfile;->a(Lcom/twitter/model/profile/ExtendedProfile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "birthday"

    const-string/jumbo v6, "change"

    .line 704
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 703
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 705
    iget-object v0, p4, Lcom/twitter/model/profile/ExtendedProfile;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    iget-object v3, p3, Lcom/twitter/model/profile/ExtendedProfile;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    if-eq v0, v3, :cond_6

    .line 706
    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "birthdate_visibility"

    const-string/jumbo v6, "change"

    .line 707
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 706
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 709
    :cond_6
    iget-object v0, p4, Lcom/twitter/model/profile/ExtendedProfile;->g:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    iget-object v3, p3, Lcom/twitter/model/profile/ExtendedProfile;->g:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    if-eq v0, v3, :cond_7

    .line 710
    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "birthdate_year_visibility"

    const-string/jumbo v6, "change"

    .line 711
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 710
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 713
    :cond_7
    iget v0, p4, Lcom/twitter/model/profile/ExtendedProfile;->e:I

    iget v3, p3, Lcom/twitter/model/profile/ExtendedProfile;->e:I

    if-eq v0, v3, :cond_8

    .line 714
    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "birthday_year"

    const-string/jumbo v6, "change"

    .line 715
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 714
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 717
    :cond_8
    iget v0, p4, Lcom/twitter/model/profile/ExtendedProfile;->d:I

    iget v3, p3, Lcom/twitter/model/profile/ExtendedProfile;->d:I

    if-eq v0, v3, :cond_9

    .line 718
    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "birthday_month"

    const-string/jumbo v6, "change"

    .line 719
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 718
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 721
    :cond_9
    iget v0, p4, Lcom/twitter/model/profile/ExtendedProfile;->c:I

    iget v3, p3, Lcom/twitter/model/profile/ExtendedProfile;->c:I

    if-eq v0, v3, :cond_0

    .line 722
    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v4, ""

    const-string/jumbo v5, "birthday_day"

    const-string/jumbo v6, "change"

    .line 723
    invoke-static {v3, v4, v5, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 722
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 731
    :cond_a
    const-string/jumbo v0, "remove"

    goto/16 :goto_3
.end method

.method private a(Lcom/twitter/model/profile/ExtendedProfile;)V
    .locals 4

    .prologue
    .line 794
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/profile/ExtendedProfile;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 796
    iget v1, p1, Lcom/twitter/model/profile/ExtendedProfile;->e:I

    iget v2, p1, Lcom/twitter/model/profile/ExtendedProfile;->d:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p1, Lcom/twitter/model/profile/ExtendedProfile;->c:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 797
    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->o:Lcom/twitter/ui/widget/TwitterEditText;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->o:Lcom/twitter/ui/widget/TwitterEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a035e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/model/profile/ExtendedProfile;->f:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 800
    invoke-static {v2, p0}, Lbug;->a(Lcom/twitter/model/profile/ExtendedProfile$Visibility;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 801
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0361

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/twitter/model/profile/ExtendedProfile;->g:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    .line 802
    invoke-static {v2, p0}, Lbug;->a(Lcom/twitter/model/profile/ExtendedProfile$Visibility;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 798
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setHelperMessage(Ljava/lang/CharSequence;)V

    .line 808
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->o:Lcom/twitter/ui/widget/TwitterEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->o:Lcom/twitter/ui/widget/TwitterEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TwitterEditText;->setHelperMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/geo/TwitterPlace;Lcom/twitter/model/core/bm;Lcom/twitter/model/core/bm;)V
    .locals 2

    .prologue
    .line 462
    iput-object p1, p0, Lcom/twitter/android/EditProfileActivity;->v:Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 464
    invoke-static {p2, p6}, Lcom/twitter/android/EditProfileActivity;->a(Ljava/lang/String;Lcom/twitter/model/core/bm;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->l:Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 467
    if-eqz p7, :cond_0

    iget-object v0, p7, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    invoke-virtual {v0}, Lcom/twitter/model/core/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p7, Lcom/twitter/model/core/bm;->c:Lcom/twitter/model/core/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/j;->a(I)Lcom/twitter/model/core/e;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cx;

    iget-object p3, v0, Lcom/twitter/model/core/cx;->E:Ljava/lang/String;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iput-object p3, p0, Lcom/twitter/android/EditProfileActivity;->u:Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-interface {v0, p4}, Lcom/twitter/android/ig;->a(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->C:Lcom/twitter/android/LocationState;

    if-nez v0, :cond_1

    .line 475
    new-instance v0, Lcom/twitter/android/LocationState;

    invoke-direct {v0, p5, p5}, Lcom/twitter/android/LocationState;-><init>(Lcom/twitter/model/geo/TwitterPlace;Lcom/twitter/model/geo/TwitterPlace;)V

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->C:Lcom/twitter/android/LocationState;

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->C:Lcom/twitter/android/LocationState;

    invoke-interface {v0, v1}, Lcom/twitter/android/ig;->a(Lcom/twitter/android/LocationState;)V

    .line 478
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0, p4}, Lcom/twitter/internal/android/widget/PopupEditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    const v0, 0x7f0a035a

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->setTitle(I)V

    .line 481
    return-void
.end method

.method private static a(Landroid/widget/EditText;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 661
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    :goto_0
    if-nez p1, :cond_0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    .line 663
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 662
    :goto_1
    return v0

    .line 661
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 663
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private ae()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private af()V
    .locals 8

    .prologue
    .line 751
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/twitter/android/EditBirthdateActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 752
    const-string/jumbo v0, "created_at"

    iget-object v2, p0, Lcom/twitter/android/EditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->R:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 753
    const-string/jumbo v2, "birthdate_extended_profile"

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->z:Lcom/twitter/model/profile/ExtendedProfile;

    :goto_0
    sget-object v3, Lcom/twitter/model/profile/ExtendedProfile;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v1, v2, v0, v3}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 756
    const-string/jumbo v0, "is_user_verified"

    iget-object v2, p0, Lcom/twitter/android/EditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    iget-boolean v2, v2, Lcom/twitter/model/core/TwitterUser;->n:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 757
    const/16 v0, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/EditProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 758
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v5, ""

    const-string/jumbo v6, "birthday"

    const-string/jumbo v7, "click"

    .line 759
    invoke-static {v4, v5, v6, v7}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 758
    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 760
    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    goto :goto_0
.end method

.method private ag()Lcom/twitter/model/profile/ExtendedProfile;
    .locals 4

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->y:Z

    if-nez v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    .line 787
    :goto_0
    return-object v0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-static {v0}, Lbug;->a(Lcom/twitter/model/profile/ExtendedProfile;)Lcom/twitter/model/profile/d;

    move-result-object v0

    .line 778
    if-nez v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    goto :goto_0

    .line 782
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 783
    iget-object v2, p0, Lcom/twitter/android/EditProfileActivity;->z:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-static {v2, v1}, Lbug;->a(Lcom/twitter/model/profile/ExtendedProfile;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 784
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    goto :goto_0

    .line 787
    :cond_2
    new-instance v2, Lcom/twitter/model/profile/b;

    iget-object v3, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-direct {v2, v3}, Lcom/twitter/model/profile/b;-><init>(Lcom/twitter/model/profile/ExtendedProfile;)V

    new-instance v3, Lcom/twitter/model/profile/f;

    invoke-direct {v3, v0}, Lcom/twitter/model/profile/f;-><init>(Lcom/twitter/model/profile/d;)V

    .line 789
    invoke-virtual {v3, v1}, Lcom/twitter/model/profile/f;->a(Z)Lcom/twitter/model/profile/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/profile/f;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/d;

    .line 788
    invoke-virtual {v2, v0}, Lcom/twitter/model/profile/b;->a(Lcom/twitter/model/profile/d;)Lcom/twitter/model/profile/b;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Lcom/twitter/model/profile/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/ExtendedProfile;

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/EditProfileActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 353
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->D:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 355
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 358
    :cond_0
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected B_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected C_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/ig;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)Lcom/twitter/app/common/base/y;
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f0400db

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->d(I)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->a(Z)V

    .line 123
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/twitter/app/common/base/y;->b(I)V

    .line 124
    return-object p2
.end method

.method protected a()Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeAssociation;-><init>()V

    const-string/jumbo v1, "edit_profile"

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeAssociation;->b(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeAssociation;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method protected a(Z)Lcom/twitter/model/profile/ExtendedProfile;
    .locals 2

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->ag()Lcom/twitter/model/profile/ExtendedProfile;

    move-result-object v0

    .line 766
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->z:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 587
    return-void
.end method

.method protected a(J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 674
    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseEditProfileActivity;->a(J)V

    .line 675
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/EditProfileActivity;->a(Landroid/widget/EditText;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "name"

    const-string/jumbo v4, "change"

    .line 677
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 676
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-interface {v1}, Lcom/twitter/android/ig;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/EditProfileActivity;->a(Landroid/widget/EditText;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "location"

    const-string/jumbo v4, "change"

    .line 681
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 680
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 683
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "url"

    const-string/jumbo v4, "change"

    .line 685
    invoke-static {v1, v2, v3, v4}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 684
    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->z:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-virtual {p0, v5}, Lcom/twitter/android/EditProfileActivity;->a(Z)Lcom/twitter/model/profile/ExtendedProfile;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/twitter/android/EditProfileActivity;->a(JLcom/twitter/model/profile/ExtendedProfile;Lcom/twitter/model/profile/ExtendedProfile;)V

    .line 688
    return-void
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 407
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/EditProfileActivity;->setResult(ILandroid/content/Intent;)V

    .line 408
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->finish()V

    .line 409
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/ig;->c(Ljava/lang/String;)V

    .line 583
    :cond_0
    return-void
.end method

.method public a(Lcyd;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 288
    invoke-interface {p1}, Lcyd;->a()I

    move-result v0

    .line 289
    const v3, 0x7f1307d9

    if-ne v0, v3, :cond_8

    .line 290
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 291
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v3

    .line 293
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f0a043a

    invoke-direct {p0, v0, v4}, Lcom/twitter/android/EditProfileActivity;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 294
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f0a0437

    invoke-direct {p0, v0, v4}, Lcom/twitter/android/EditProfileActivity;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 297
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    const-string/jumbo v4, "://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 300
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 303
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_0
    sget-object v4, Lra;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_4

    .line 308
    const v0, 0x7f0a043c

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 315
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    iget-object v4, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v4}, Lcom/twitter/internal/android/widget/PopupEditText;->length()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/twitter/android/ig;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    const v0, 0x7f0a0439

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 319
    :cond_1
    invoke-virtual {v3}, Lcom/twitter/util/collection/r;->h()Z

    move-result v0

    if-nez v0, :cond_6

    .line 320
    const-string/jumbo v0, "\n"

    invoke-static {v0, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-virtual {v3}, Lcom/twitter/util/collection/r;->i()I

    move-result v0

    if-le v0, v1, :cond_5

    move v0, v1

    .line 320
    :goto_2
    invoke-static {p0, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 339
    :cond_2
    :goto_3
    return v1

    .line 305
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_4
    iget-object v4, p0, Lcom/twitter/android/EditProfileActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 321
    goto :goto_2

    .line 325
    :cond_6
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->h()V

    goto :goto_3

    .line 327
    :cond_7
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->finish()V

    goto :goto_3

    .line 329
    :cond_8
    const v3, 0x7f13003d

    if-ne v0, v3, :cond_2

    .line 330
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 331
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->f()V

    goto :goto_3

    .line 333
    :cond_9
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/EditProfileActivity;->a:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, "cancel"

    .line 334
    invoke-static {v3, v6, v7, v8}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 333
    invoke-virtual {p0, v4, v5, v0}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0, v2}, Lcom/twitter/android/EditProfileActivity;->setResult(I)V

    .line 336
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->finish()V

    goto :goto_3
.end method

.method public a(Lcyg;)Z
    .locals 1

    .prologue
    .line 272
    const v0, 0x7f14002d

    invoke-interface {p1, v0}, Lcyg;->a(I)V

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcyg;)I
    .locals 2

    .prologue
    .line 279
    invoke-interface {p1}, Lcyg;->j()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/ToolBar;

    .line 280
    const v1, 0x7f1307d9

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->m:Landroid/widget/EditText;

    .line 281
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 280
    invoke-virtual {v0, v1}, Lbjl;->c(Z)Lbjl;

    .line 282
    const/4 v0, 0x2

    return v0
.end method

.method public b(I)V
    .locals 8

    .prologue
    .line 561
    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->ae()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v4

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->b:Lcom/twitter/android/profiles/ao;

    .line 562
    invoke-virtual {v0}, Lcom/twitter/android/profiles/ao;->e()J

    move-result-wide v6

    move v2, p1

    .line 561
    invoke-interface/range {v1 .. v7}, Lcom/twitter/android/ig;->a(ILjava/lang/String;JJ)V

    .line 563
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-interface {v0}, Lcom/twitter/android/ig;->c()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/twitter/model/geo/TwitterPlace;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/internal/android/widget/PopupEditText;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/PopupEditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 570
    :cond_0
    return-void

    .line 564
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 129
    const v0, 0x7f13015e

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->t:Landroid/widget/ScrollView;

    .line 130
    const v0, 0x7f13033c

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->m:Landroid/widget/EditText;

    .line 131
    const v0, 0x7f13033f

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->n:Landroid/widget/EditText;

    .line 132
    const v0, 0x7f130341

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/TwitterEditText;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->o:Lcom/twitter/ui/widget/TwitterEditText;

    .line 133
    const v0, 0x7f13033e

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/PopupEditText;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    .line 134
    invoke-static {}, Lbug;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->x:Z

    .line 135
    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->o:Lcom/twitter/ui/widget/TwitterEditText;

    iget-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->x:Z

    if-eqz v0, :cond_8

    move v0, v8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/TwitterEditText;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->o:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/TwitterEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->o:Lcom/twitter/ui/widget/TwitterEditText;

    invoke-virtual {v0, v6}, Lcom/twitter/ui/widget/TwitterEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 138
    const v0, 0x7f130340

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->p:Landroid/widget/CheckBox;

    .line 139
    invoke-static {}, Lbug;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->y:Z

    .line 140
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 141
    const v0, 0x7f13015f

    invoke-virtual {p0, v0}, Lcom/twitter/android/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 142
    invoke-direct {p0, v1}, Lcom/twitter/android/EditProfileActivity;->a(Landroid/content/res/Resources;)Lcom/twitter/library/media/widget/UserImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/EditProfileActivity;->j:Lcom/twitter/library/media/widget/UserImageView;

    .line 143
    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->j:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 144
    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseEditProfileActivity;->b(Landroid/os/Bundle;Lcom/twitter/app/common/base/y;)V

    .line 145
    new-instance v0, Lcom/twitter/android/ii;

    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "me"

    const-string/jumbo v3, "profile"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/ii;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    .line 146
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-interface {v0, p0}, Lcom/twitter/android/ig;->a(Lcom/twitter/android/ih;)V

    .line 148
    const-string/jumbo v0, "profile_structured_location_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-interface {v1}, Lcom/twitter/android/ig;->a()Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/PopupEditText;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/internal/android/widget/PopupEditText;->setPopupEditTextListener(Lcom/twitter/internal/android/widget/ag;)V

    .line 151
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    sget-object v1, Lcom/twitter/internal/android/widget/PopupEditText;->a:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 152
    invoke-static {}, Lcom/twitter/android/client/bu;->h()I

    move-result v2

    int-to-long v2, v2

    .line 151
    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/twitter/internal/android/widget/PopupEditText;->a(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;Landroid/widget/Filterable;J)V

    .line 153
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/internal/android/widget/PopupEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 156
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 157
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0, p0}, Lcom/twitter/internal/android/widget/PopupEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    new-instance v1, Lcom/twitter/android/eo;

    invoke-direct {v1, p0}, Lcom/twitter/android/eo;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/PopupEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->ac()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 170
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 171
    const-string/jumbo v1, "failure"

    invoke-virtual {v11, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/EditProfileActivity;->w:Z

    .line 173
    iget-boolean v1, p0, Lcom/twitter/android/EditProfileActivity;->w:Z

    if-eqz v1, :cond_a

    .line 180
    const-string/jumbo v1, "update_profile"

    invoke-virtual {v11, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 181
    const-string/jumbo v0, "name"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string/jumbo v0, "description"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    const-string/jumbo v0, "url"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 184
    const-string/jumbo v0, "location"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    const-string/jumbo v0, "structured_location"

    sget-object v5, Lcom/twitter/model/geo/TwitterPlace;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v11, v0, v5}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/geo/TwitterPlace;

    move-object v5, v0

    :goto_1
    move-object v0, p0

    move-object v7, v6

    .line 195
    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/EditProfileActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/geo/TwitterPlace;Lcom/twitter/model/core/bm;Lcom/twitter/model/core/bm;)V

    .line 197
    const-string/jumbo v0, "header_media_file"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/model/MediaFile;

    .line 198
    if-eqz v0, :cond_1

    .line 199
    sget-object v1, Lcom/twitter/model/media/MediaSource;->b:Lcom/twitter/model/media/MediaSource;

    .line 200
    invoke-static {v0, v1}, Lcom/twitter/model/media/EditableImage;->a(Lcom/twitter/media/model/MediaFile;Lcom/twitter/model/media/MediaSource;)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->c:Lcom/twitter/model/media/EditableImage;

    .line 201
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->c()V

    .line 203
    :cond_1
    const-string/jumbo v0, "avatar_media_file"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/media/model/MediaFile;

    .line 204
    if-eqz v0, :cond_2

    .line 205
    sget-object v1, Lcom/twitter/model/media/MediaSource;->b:Lcom/twitter/model/media/MediaSource;

    .line 206
    invoke-static {v0, v1}, Lcom/twitter/model/media/EditableImage;->a(Lcom/twitter/media/model/MediaFile;Lcom/twitter/model/media/MediaSource;)Lcom/twitter/model/media/EditableMedia;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableImage;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    .line 207
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->j:Lcom/twitter/library/media/widget/UserImageView;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->d:Lcom/twitter/model/media/EditableImage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/widget/UserImageView;->a(Ljava/lang/String;)Z

    .line 216
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 218
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->m:Landroid/widget/EditText;

    new-instance v1, Lcom/twitter/android/ep;

    invoke-direct {v1, p0}, Lcom/twitter/android/ep;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/twitter/android/EditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    invoke-static {v2, p0}, Lcom/twitter/android/profiles/as;->a(Lcom/twitter/model/core/TwitterUser;Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/profiles/HeaderImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->j:Lcom/twitter/library/media/widget/UserImageView;

    invoke-virtual {v0, p0}, Lcom/twitter/library/media/widget/UserImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->i:Lcom/twitter/android/profiles/HeaderImageView;

    invoke-virtual {v0, p0}, Lcom/twitter/android/profiles/HeaderImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    if-eqz p1, :cond_3

    .line 230
    const-string/jumbo v0, "show_camera"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->s:Z

    .line 231
    iget-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->s:Z

    if-nez v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->t:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_4

    .line 237
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->t:Lcom/twitter/model/profile/ExtendedProfile;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->z:Lcom/twitter/model/profile/ExtendedProfile;

    .line 239
    :cond_4
    if-eqz p1, :cond_b

    .line 240
    const-string/jumbo v0, "updated_birthdate_extended_profile"

    sget-object v1, Lcom/twitter/model/profile/ExtendedProfile;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/ExtendedProfile;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    .line 246
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-static {v0}, Lbug;->a(Lcom/twitter/model/profile/ExtendedProfile;)Lcom/twitter/model/profile/d;

    move-result-object v1

    .line 247
    iget-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->y:Z

    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    move v0, v10

    .line 248
    :goto_4
    iget-object v2, p0, Lcom/twitter/android/EditProfileActivity;->p:Landroid/widget/CheckBox;

    if-eqz v0, :cond_6

    move v9, v8

    :cond_6
    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->p:Landroid/widget/CheckBox;

    if-eqz v1, :cond_d

    iget-boolean v1, v1, Lcom/twitter/model/profile/d;->e:Z

    if-eqz v1, :cond_d

    :goto_5
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-direct {p0, v0}, Lcom/twitter/android/EditProfileActivity;->a(Lcom/twitter/model/profile/ExtendedProfile;)V

    .line 251
    if-nez p1, :cond_7

    const-string/jumbo v0, "edit_birthdate"

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 252
    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->af()V

    .line 257
    :cond_7
    const-string/jumbo v0, "profile_invalid_name_bio_regex"

    invoke-static {v0}, Lcom/twitter/config/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->D:Ljava/util/regex/Pattern;

    .line 259
    return-void

    :cond_8
    move v0, v9

    .line 135
    goto/16 :goto_0

    .line 187
    :cond_9
    iget-object v1, v0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    .line 188
    iget-object v2, v0, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    .line 189
    iget-object v3, v0, Lcom/twitter/model/core/TwitterUser;->h:Ljava/lang/String;

    .line 190
    iget-object v4, v0, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    .line 191
    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->r:Lcom/twitter/util/collection/ab;

    invoke-static {v0}, Lcom/twitter/util/collection/ab;->a(Lcom/twitter/util/collection/ab;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/geo/TwitterPlace;

    move-object v5, v0

    goto/16 :goto_1

    .line 210
    :cond_a
    iget-object v1, v0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/twitter/model/core/TwitterUser;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/twitter/model/core/TwitterUser;->h:Ljava/lang/String;

    iget-object v4, v0, Lcom/twitter/model/core/TwitterUser;->q:Ljava/lang/String;

    iget-object v5, v0, Lcom/twitter/model/core/TwitterUser;->r:Lcom/twitter/util/collection/ab;

    .line 211
    invoke-static {v5}, Lcom/twitter/util/collection/ab;->a(Lcom/twitter/util/collection/ab;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/model/geo/TwitterPlace;

    iget-object v6, v0, Lcom/twitter/model/core/TwitterUser;->D:Lcom/twitter/model/core/bm;

    iget-object v7, v0, Lcom/twitter/model/core/TwitterUser;->E:Lcom/twitter/model/core/bm;

    move-object v0, p0

    .line 210
    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/EditProfileActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/geo/TwitterPlace;Lcom/twitter/model/core/bm;Lcom/twitter/model/core/bm;)V

    goto/16 :goto_2

    .line 242
    :cond_b
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->z:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_5

    .line 243
    new-instance v0, Lcom/twitter/model/profile/b;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->z:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-direct {v0, v1}, Lcom/twitter/model/profile/b;-><init>(Lcom/twitter/model/profile/ExtendedProfile;)V

    invoke-virtual {v0}, Lcom/twitter/model/profile/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/ExtendedProfile;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    goto/16 :goto_3

    :cond_c
    move v0, v8

    .line 247
    goto :goto_4

    :cond_d
    move v10, v8

    .line 249
    goto :goto_5
.end method

.method d(Lcom/twitter/media/model/MediaFile;)V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/twitter/android/BaseEditProfileActivity;->d(Lcom/twitter/media/model/MediaFile;)V

    .line 264
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->s:Z

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->s:Z

    .line 266
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->r:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    :cond_0
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 638
    new-instance v0, Lcom/twitter/android/eq;

    invoke-direct {v0, p0}, Lcom/twitter/android/eq;-><init>(Lcom/twitter/android/EditProfileActivity;)V

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected l()Lcom/twitter/model/geo/TwitterPlace;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-interface {v0}, Lcom/twitter/android/ig;->c()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    const/16 v0, 0x64

    if-ne p1, v0, :cond_5

    .line 369
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "edit_birthdate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->finish()V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "edit_birthdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x0

    .line 375
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 376
    const-string/jumbo v0, "birthdate_extended_profile"

    sget-object v1, Lcom/twitter/model/profile/ExtendedProfile;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p3, v0, v1}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/ExtendedProfile;

    .line 383
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 384
    new-instance v1, Lcom/twitter/model/profile/b;

    invoke-direct {v1, v0}, Lcom/twitter/model/profile/b;-><init>(Lcom/twitter/model/profile/ExtendedProfile;)V

    .line 386
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    if-eqz v0, :cond_3

    .line 387
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    iget-object v0, v0, Lcom/twitter/model/profile/ExtendedProfile;->i:Lcom/twitter/model/profile/d;

    invoke-virtual {v1, v0}, Lcom/twitter/model/profile/b;->a(Lcom/twitter/model/profile/d;)Lcom/twitter/model/profile/b;

    .line 389
    :cond_3
    invoke-virtual {v1}, Lcom/twitter/model/profile/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/ExtendedProfile;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    .line 390
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    invoke-direct {p0, v0}, Lcom/twitter/android/EditProfileActivity;->a(Lcom/twitter/model/profile/ExtendedProfile;)V

    goto :goto_0

    .line 378
    :cond_4
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 379
    new-instance v0, Lcom/twitter/model/profile/b;

    invoke-direct {v0}, Lcom/twitter/model/profile/b;-><init>()V

    .line 380
    invoke-virtual {v0, v2}, Lcom/twitter/model/profile/b;->a(I)Lcom/twitter/model/profile/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twitter/model/profile/b;->b(I)Lcom/twitter/model/profile/b;

    move-result-object v0

    .line 381
    invoke-virtual {v0, v2}, Lcom/twitter/model/profile/b;->c(I)Lcom/twitter/model/profile/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/profile/b;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/ExtendedProfile;

    goto :goto_1

    .line 393
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/BaseEditProfileActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    if-ne p1, v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/android/ig;->c(Ljava/lang/String;)V

    .line 598
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->o:Lcom/twitter/ui/widget/TwitterEditText;

    if-ne p1, v0, :cond_1

    .line 594
    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->af()V

    goto :goto_0

    .line 596
    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/android/BaseEditProfileActivity;->onClickHandler(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 824
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-interface {v0, v1}, Lcom/twitter/android/ig;->a(Lcom/twitter/android/ih;)V

    .line 826
    iput-object v1, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    .line 828
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/BaseEditProfileActivity;->onDestroy()V

    .line 829
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 548
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    if-ne p1, v0, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->ae()Ljava/lang/String;

    move-result-object v0

    .line 550
    if-eqz p2, :cond_1

    .line 551
    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-interface {v1, v0}, Lcom/twitter/android/ig;->c(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->h:Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "me:profile:structured_location:location_picker:open"

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/EditProfileActivity;->a(J[Ljava/lang/String;)V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    invoke-interface {v0}, Lcom/twitter/android/ig;->c()Lcom/twitter/model/geo/TwitterPlace;

    move-result-object v0

    if-nez v0, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->D()V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->C()V

    .line 607
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->D()V

    .line 402
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/BaseEditProfileActivity;->onPause()V

    .line 403
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 527
    invoke-super {p0, p1}, Lcom/twitter/android/BaseEditProfileActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 528
    const-string/jumbo v0, "location_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/LocationState;

    iput-object v0, p0, Lcom/twitter/android/EditProfileActivity;->C:Lcom/twitter/android/LocationState;

    .line 529
    const-string/jumbo v0, "show_camera"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->s:Z

    .line 530
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 518
    const-string/jumbo v0, "location_state"

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->C:Lcom/twitter/android/LocationState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 519
    const-string/jumbo v0, "show_camera"

    iget-boolean v1, p0, Lcom/twitter/android/EditProfileActivity;->s:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 520
    const-string/jumbo v0, "updated_birthdate_extended_profile"

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    sget-object v2, Lcom/twitter/model/profile/ExtendedProfile;->a:Lcom/twitter/util/serialization/d;

    invoke-static {p1, v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/os/Bundle;

    .line 522
    invoke-super {p0, p1}, Lcom/twitter/android/BaseEditProfileActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 523
    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->C()V

    .line 612
    return-void
.end method

.method protected r()Z
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/android/EditProfileActivity;->a(Landroid/widget/EditText;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected s()Z
    .locals 2

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/EditProfileActivity;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->w:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->v:Ljava/lang/String;

    .line 535
    invoke-static {v0, v1}, Lcom/twitter/android/EditProfileActivity;->a(Landroid/widget/EditText;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    .line 536
    invoke-interface {v1}, Lcom/twitter/android/ig;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/EditProfileActivity;->a(Landroid/widget/EditText;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->B:Lcom/twitter/android/ig;

    .line 537
    invoke-interface {v0}, Lcom/twitter/android/ig;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->z:Lcom/twitter/model/profile/ExtendedProfile;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->A:Lcom/twitter/model/profile/ExtendedProfile;

    .line 539
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/twitter/android/EditProfileActivity;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->z:Lcom/twitter/model/profile/ExtendedProfile;

    iget-object v1, p0, Lcom/twitter/android/EditProfileActivity;->p:Landroid/widget/CheckBox;

    .line 542
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 541
    invoke-static {v0, v1}, Lbug;->a(Lcom/twitter/model/profile/ExtendedProfile;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 534
    :goto_0
    return v0

    .line 541
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->C()V

    .line 576
    return-void
.end method

.method public y()V
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/twitter/android/EditProfileActivity;->q:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->a()V

    .line 815
    :cond_0
    return-void
.end method

.method public z()V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/twitter/android/EditProfileActivity;->C()V

    .line 820
    return-void
.end method
