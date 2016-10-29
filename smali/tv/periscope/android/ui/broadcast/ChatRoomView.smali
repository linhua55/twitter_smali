.class public Ltv/periscope/android/ui/broadcast/ChatRoomView;
.super Landroid/widget/RelativeLayout;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Ltv/periscope/android/ui/love/HeartContainerView;

.field private c:Ltv/periscope/android/ui/chat/ChatMessageContainerView;

.field private d:[Landroid/view/View;

.field private e:Ltv/periscope/android/ui/broadcast/ChatComposer;

.field private f:Ltv/periscope/android/ui/broadcast/ParticipantCountView;

.field private g:Landroid/view/View;

.field private h:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

.field private i:Landroid/animation/Animator;

.field private j:Landroid/animation/Animator;

.field private k:Landroid/animation/Animator;

.field private l:Landroid/animation/Animator;

.field private m:Ltv/periscope/model/chat/Message;

.field private final n:Ljava/lang/Runnable;

.field private o:Z

.field private p:I

.field private q:Landroid/view/View$OnTouchListener;

.field private r:Z

.field private final s:Ltv/periscope/android/ui/broadcast/moderator/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Ltv/periscope/android/ui/broadcast/be;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcast/be;-><init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->n:Ljava/lang/Runnable;

    .line 68
    iput-boolean v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    .line 69
    iput v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->p:I

    .line 71
    iput-boolean v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->r:Z

    .line 73
    new-instance v0, Ltv/periscope/android/ui/broadcast/bf;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcast/bf;-><init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->s:Ltv/periscope/android/ui/broadcast/moderator/o;

    .line 83
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance v0, Ltv/periscope/android/ui/broadcast/be;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcast/be;-><init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->n:Ljava/lang/Runnable;

    .line 68
    iput-boolean v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    .line 69
    iput v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->p:I

    .line 71
    iput-boolean v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->r:Z

    .line 73
    new-instance v0, Ltv/periscope/android/ui/broadcast/bf;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/broadcast/bf;-><init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->s:Ltv/periscope/android/ui/broadcast/moderator/o;

    .line 88
    invoke-direct {p0, p1, p2}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method private a(I)Landroid/animation/Animator;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 391
    .line 393
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->g:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 394
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 395
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f:Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    fill-array-data v4, :array_2

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 396
    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v8, [F

    iget-object v6, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    .line 397
    invoke-virtual {v6}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v9

    const/4 v6, 0x0

    aput v6, v5, v10

    .line 396
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 398
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 399
    int-to-long v6, p1

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 400
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v9

    aput-object v1, v5, v10

    aput-object v2, v5, v8

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 401
    new-instance v0, Ltv/periscope/android/ui/broadcast/bg;

    invoke-direct {v0, p0, v3}, Ltv/periscope/android/ui/broadcast/bg;-><init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 416
    return-object v4

    .line 393
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 394
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 395
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1f4

    const/4 v2, 0x1

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ltv/periscope/android/library/n;->ps__chatroom_view:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    sget-object v0, Ltv/periscope/android/library/q;->ChatRoomView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    sget v1, Ltv/periscope/android/library/q;->ChatRoomView_ps__includeComposer:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    .line 96
    sget v1, Ltv/periscope/android/library/q;->ChatRoomView_ps__heartsMarginFactor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->p:I

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    sget v0, Ltv/periscope/android/library/l;->chat_container:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a:Landroid/view/View;

    .line 100
    sget v0, Ltv/periscope/android/library/l;->hearts_view:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/love/HeartContainerView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b:Ltv/periscope/android/ui/love/HeartContainerView;

    .line 101
    sget v0, Ltv/periscope/android/library/l;->chat_messages_view:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/chat/ChatMessageContainerView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c:Ltv/periscope/android/ui/chat/ChatMessageContainerView;

    .line 103
    sget v0, Ltv/periscope/android/library/l;->moderator_overlay:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->g:Landroid/view/View;

    .line 104
    sget v0, Ltv/periscope/android/library/l;->composer_moderator_container:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 105
    sget v0, Ltv/periscope/android/library/l;->participants:I

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f:Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    .line 107
    sget v0, Ltv/periscope/android/library/l;->compose_comment_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/ChatComposer;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    .line 108
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0, p0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->a(Landroid/view/View$OnFocusChangeListener;)V

    .line 111
    sget v0, Ltv/periscope/android/library/l;->moderator_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->h:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    .line 112
    invoke-direct {p0, v3}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->d(I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->i:Landroid/animation/Animator;

    .line 113
    invoke-direct {p0, v3}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b(I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->k:Landroid/animation/Animator;

    .line 114
    invoke-direct {p0, v3}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c(I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->l:Landroid/animation/Animator;

    .line 115
    invoke-direct {p0, v3}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a(I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->j:Landroid/animation/Animator;

    .line 121
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->d:[Landroid/view/View;

    .line 122
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->d:[Landroid/view/View;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b:Ltv/periscope/android/ui/love/HeartContainerView;

    aput-object v1, v0, v4

    .line 123
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->d:[Landroid/view/View;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f:Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    aput-object v1, v0, v2

    .line 125
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->k()V

    .line 126
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0, v4}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->h()V

    goto :goto_0
.end method

.method static synthetic a(Ltv/periscope/android/ui/broadcast/ChatRoomView;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->l()V

    return-void
.end method

.method private b(I)Landroid/animation/Animator;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 420
    .line 422
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->g:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 423
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 424
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f:Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    fill-array-data v4, :array_2

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 425
    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v9

    iget-object v6, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v6}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v10

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 426
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 427
    int-to-long v6, p1

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 428
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v9

    aput-object v1, v5, v10

    aput-object v2, v5, v8

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 430
    new-instance v0, Ltv/periscope/android/ui/broadcast/bh;

    invoke-direct {v0, p0, v3}, Ltv/periscope/android/ui/broadcast/bh;-><init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 446
    return-object v4

    .line 422
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 423
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 424
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic b(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ChatComposer;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    return-object v0
.end method

.method private c(I)Landroid/animation/Animator;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 450
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->g:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v7, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 451
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f:Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v7, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 452
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v8

    iget-object v5, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    .line 453
    invoke-virtual {v5}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->h:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-virtual {v6}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->getInfoContainer()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v4, v9

    .line 452
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 454
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 455
    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 456
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    aput-object v2, v4, v7

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 457
    new-instance v0, Ltv/periscope/android/ui/broadcast/bi;

    invoke-direct {v0, p0, v2}, Ltv/periscope/android/ui/broadcast/bi;-><init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 473
    return-object v3

    .line 450
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 451
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic c(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->g:Landroid/view/View;

    return-object v0
.end method

.method private d(I)Landroid/animation/Animator;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 477
    .line 479
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->h:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 480
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v8, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 481
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f:Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    fill-array-data v4, :array_2

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 482
    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a:Landroid/view/View;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v8, [F

    iget-object v6, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    .line 483
    invoke-virtual {v6}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v9

    iget-object v6, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v6}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->h:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-virtual {v7}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->getInfoContainer()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v5, v10

    .line 482
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 484
    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 485
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 486
    int-to-long v6, p1

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 487
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v9

    aput-object v3, v5, v10

    aput-object v1, v5, v8

    const/4 v0, 0x3

    aput-object v2, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 488
    new-instance v0, Ltv/periscope/android/ui/broadcast/bj;

    invoke-direct {v0, p0, v3}, Ltv/periscope/android/ui/broadcast/bj;-><init>(Ltv/periscope/android/ui/broadcast/ChatRoomView;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 511
    return-object v4

    .line 479
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 480
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 481
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic d(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/ParticipantCountView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f:Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    return-object v0
.end method

.method static synthetic e(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->h:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    return-object v0
.end method

.method static synthetic g(Ltv/periscope/android/ui/broadcast/ChatRoomView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 153
    sget v2, Ltv/periscope/android/library/l;->composer_moderator_container:I

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 158
    iget-boolean v2, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v2}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v3, v1

    .line 169
    :goto_0
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c:Ltv/periscope/android/ui/chat/ChatMessageContainerView;

    invoke-virtual {v1}, Ltv/periscope/android/ui/chat/ChatMessageContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 170
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 172
    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b:Ltv/periscope/android/ui/love/HeartContainerView;

    invoke-virtual {v2}, Ltv/periscope/android/ui/love/HeartContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 173
    iget v4, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->p:I

    mul-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 175
    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c:Ltv/periscope/android/ui/chat/ChatMessageContainerView;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/chat/ChatMessageContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b:Ltv/periscope/android/ui/love/HeartContainerView;

    invoke-virtual {v0, v2}, Ltv/periscope/android/ui/love/HeartContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    return-void

    .line 160
    :cond_0
    iget-boolean v2, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v2}, Ltv/periscope/android/ui/broadcast/ChatComposer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 161
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ltv/periscope/android/library/j;->ps__standard_spacing_16:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 164
    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move v3, v2

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Ltv/periscope/android/library/j;->ps__standard_spacing_16:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    move v3, v1

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->m:Ltv/periscope/model/chat/Message;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c:Ltv/periscope/android/ui/chat/ChatMessageContainerView;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->m:Ltv/periscope/model/chat/Message;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/chat/ChatMessageContainerView;->a(Ltv/periscope/model/chat/Message;)V

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->m:Ltv/periscope/model/chat/Message;

    .line 519
    :cond_0
    return-void
.end method

.method private setComposerSendEnabled(Z)V
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setSendEnabled(Z)V

    .line 324
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->r:Z

    .line 215
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c:Ltv/periscope/android/ui/chat/ChatMessageContainerView;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/chat/ChatMessageContainerView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b:Ltv/periscope/android/ui/love/HeartContainerView;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/love/HeartContainerView;->setVisibility(I)V

    .line 217
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e()V

    .line 220
    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 227
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b:Ltv/periscope/android/ui/love/HeartContainerView;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/love/HeartContainerView;->a(IZ)V

    .line 228
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 261
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/broadcast/ChatComposer;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b:Ltv/periscope/android/ui/love/HeartContainerView;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/love/HeartContainerView;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 198
    return-void
.end method

.method public a(Ltv/periscope/model/chat/Message;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c:Ltv/periscope/android/ui/chat/ChatMessageContainerView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/chat/ChatMessageContainerView;->a(Ltv/periscope/model/chat/Message;)V

    .line 243
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->r:Z

    .line 202
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c:Ltv/periscope/android/ui/chat/ChatMessageContainerView;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/chat/ChatMessageContainerView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b:Ltv/periscope/android/ui/love/HeartContainerView;

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/love/HeartContainerView;->setVisibility(I)V

    .line 204
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-eqz v0, :cond_0

    .line 205
    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->d()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c:Ltv/periscope/android/ui/chat/ChatMessageContainerView;

    invoke-virtual {v0}, Ltv/periscope/android/ui/chat/ChatMessageContainerView;->b()V

    .line 247
    return-void
.end method

.method public b(IZ)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 231
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b:Ltv/periscope/android/ui/love/HeartContainerView;

    invoke-virtual {v0, p1, p2}, Ltv/periscope/android/ui/love/HeartContainerView;->b(IZ)V

    .line 232
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c:Ltv/periscope/android/ui/chat/ChatMessageContainerView;

    invoke-virtual {v0}, Ltv/periscope/android/ui/chat/ChatMessageContainerView;->a()V

    .line 251
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->g()V

    .line 272
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->f()V

    .line 273
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->k()V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->e()V

    .line 282
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->d()V

    .line 283
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->h()V

    .line 284
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->k()V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/ChatComposer;->e()V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->setComposerSendEnabled(Z)V

    .line 317
    return-void
.end method

.method public getRightAlignedViews()[Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->d:[Landroid/view/View;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->setComposerSendEnabled(Z)V

    .line 329
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f:Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->setVisibility(I)V

    .line 366
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f:Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->setVisibility(I)V

    .line 370
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Ltv/periscope/android/library/l;->compose_comment:I

    if-ne v0, v1, :cond_0

    .line 375
    if-eqz p2, :cond_1

    .line 376
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->j()V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->i()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->q:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->q:Landroid/view/View$OnTouchListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 141
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setChatAlpha(F)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b:Ltv/periscope/android/ui/love/HeartContainerView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/love/HeartContainerView;->setAlpha(F)V

    .line 182
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c:Ltv/periscope/android/ui/chat/ChatMessageContainerView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/chat/ChatMessageContainerView;->setAlpha(F)V

    .line 183
    return-void
.end method

.method public setChatMessageAdapter(Ltv/periscope/android/ui/chat/e;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->c:Ltv/periscope/android/ui/chat/ChatMessageContainerView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/chat/ChatMessageContainerView;->setChatMessageAdapter(Ltv/periscope/android/ui/chat/e;)V

    .line 187
    return-void
.end method

.method public setChatState(Ltv/periscope/android/ui/chat/ChatState;)V
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setChatState(Ltv/periscope/android/ui/chat/ChatState;)V

    goto :goto_0
.end method

.method public setHeartsMarginFactor(I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->p:I

    .line 146
    invoke-direct {p0}, Ltv/periscope/android/ui/broadcast/ChatRoomView;->k()V

    .line 147
    return-void
.end method

.method public setImageLoader(Ldmy;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->b:Ltv/periscope/android/ui/love/HeartContainerView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/love/HeartContainerView;->setImageLoader(Ldmy;)V

    .line 191
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setImageLoader(Ldmy;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setLocalPunishmentPrompt(Ltv/periscope/model/chat/Message;)V
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setLocalPunishmentPrompt(Ltv/periscope/model/chat/Message;)V

    goto :goto_0
.end method

.method public setModeratorSelectionListener(Ltv/periscope/android/ui/broadcast/moderator/n;)V
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->h:Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/moderator/ModeratorView;->setModeratorSelectionListener(Ltv/periscope/android/ui/broadcast/moderator/n;)V

    goto :goto_0
.end method

.method public setMutualCount(I)V
    .locals 0

    .prologue
    .line 362
    return-void
.end method

.method public setOnInterceptTouchEventListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->q:Landroid/view/View$OnTouchListener;

    .line 134
    return-void
.end method

.method public setParticipantClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f:Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    return-void
.end method

.method public setParticipantCount(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->f:Ltv/periscope/android/ui/broadcast/ParticipantCountView;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/ParticipantCountView;->setNumParticipants(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method setPunishmentStatusDelegate(Ltv/periscope/android/ui/chat/aq;)V
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setPunishmentStatusDelegate(Ltv/periscope/android/ui/chat/aq;)V

    goto :goto_0
.end method

.method setSendCommentDelegate(Ltv/periscope/android/ui/chat/ar;)V
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setSendCommentDelegate(Ltv/periscope/android/ui/chat/ar;)V

    goto :goto_0
.end method

.method public setUpComposerReply(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->o:Z

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ChatRoomView;->e:Ltv/periscope/android/ui/broadcast/ChatComposer;

    invoke-virtual {v0, p1}, Ltv/periscope/android/ui/broadcast/ChatComposer;->setUpReply(Ljava/lang/String;)V

    goto :goto_0
.end method
