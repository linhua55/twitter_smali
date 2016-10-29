.class public Ltv/periscope/android/ui/chat/z;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/ui/chat/ah;
.implements Ltv/periscope/android/ui/chat/y;


# static fields
.field static final a:J
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private A:Z

.field private final B:Ljava/lang/Runnable;

.field b:Ltv/periscope/model/u;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Ltv/periscope/model/StreamType;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final e:Landroid/content/res/Resources;

.field private final f:Landroid/os/Handler;

.field private final g:Ltv/periscope/android/api/ApiManager;

.field private h:Ltv/periscope/android/chat/d;

.field private final i:Ltv/periscope/android/chat/a;

.field private final j:Ltv/periscope/android/player/d;

.field private final k:Ltv/periscope/android/player/e;

.field private final l:Ltv/periscope/android/api/PsUser;

.field private final m:Z

.field private final n:Ltv/periscope/android/ui/chat/ao;

.field private final o:Ltv/periscope/android/ui/broadcast/cc;

.field private final p:Ltv/periscope/android/ui/chat/am;

.field private final q:Ltv/periscope/android/data/f;

.field private final r:Ldnd;

.field private final s:Ldmn;

.field private t:Ltv/periscope/android/ui/chat/al;

.field private u:Ltv/periscope/android/player/PlayMode;

.field private v:Ltv/periscope/android/chat/f;

.field private w:I

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ltv/periscope/android/ui/chat/z;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/os/Handler;Ltv/periscope/android/api/ApiManager;Ltv/periscope/android/chat/a;Ltv/periscope/android/player/d;Ltv/periscope/android/player/e;Ltv/periscope/android/api/PsUser;ZLtv/periscope/android/ui/chat/ao;Ltv/periscope/android/ui/broadcast/cc;Ltv/periscope/android/ui/chat/am;Ltv/periscope/android/data/f;Ldnd;Ldmn;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/chat/z;->z:Z

    .line 562
    new-instance v0, Ltv/periscope/android/ui/chat/ac;

    invoke-direct {v0, p0}, Ltv/periscope/android/ui/chat/ac;-><init>(Ltv/periscope/android/ui/chat/z;)V

    iput-object v0, p0, Ltv/periscope/android/ui/chat/z;->B:Ljava/lang/Runnable;

    .line 92
    iput-object p1, p0, Ltv/periscope/android/ui/chat/z;->e:Landroid/content/res/Resources;

    .line 93
    iput-object p2, p0, Ltv/periscope/android/ui/chat/z;->f:Landroid/os/Handler;

    .line 94
    iput-object p3, p0, Ltv/periscope/android/ui/chat/z;->g:Ltv/periscope/android/api/ApiManager;

    .line 95
    iput-object p4, p0, Ltv/periscope/android/ui/chat/z;->i:Ltv/periscope/android/chat/a;

    .line 96
    iput-object p5, p0, Ltv/periscope/android/ui/chat/z;->j:Ltv/periscope/android/player/d;

    .line 97
    iput-object p6, p0, Ltv/periscope/android/ui/chat/z;->k:Ltv/periscope/android/player/e;

    .line 98
    iput-object p7, p0, Ltv/periscope/android/ui/chat/z;->l:Ltv/periscope/android/api/PsUser;

    .line 99
    iput-boolean p8, p0, Ltv/periscope/android/ui/chat/z;->m:Z

    .line 100
    iput-object p9, p0, Ltv/periscope/android/ui/chat/z;->n:Ltv/periscope/android/ui/chat/ao;

    .line 101
    iput-object p10, p0, Ltv/periscope/android/ui/chat/z;->o:Ltv/periscope/android/ui/broadcast/cc;

    .line 102
    iput-object p11, p0, Ltv/periscope/android/ui/chat/z;->p:Ltv/periscope/android/ui/chat/am;

    .line 103
    iput-object p12, p0, Ltv/periscope/android/ui/chat/z;->q:Ltv/periscope/android/data/f;

    .line 104
    iput-object p13, p0, Ltv/periscope/android/ui/chat/z;->r:Ldnd;

    .line 105
    iput-object p14, p0, Ltv/periscope/android/ui/chat/z;->s:Ldmn;

    .line 106
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/chat/z;)Ltv/periscope/android/ui/chat/al;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    return-object v0
.end method

.method static synthetic a(Ltv/periscope/android/ui/chat/z;Ltv/periscope/model/chat/Message;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ltv/periscope/android/ui/chat/z;->d(Ltv/periscope/model/chat/Message;)V

    return-void
.end method

.method static synthetic a(Ltv/periscope/android/ui/chat/z;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Ltv/periscope/android/ui/chat/z;->z:Z

    return p1
.end method

.method private d(Ltv/periscope/model/chat/Message;)V
    .locals 3

    .prologue
    .line 573
    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 574
    iget-boolean v0, p0, Ltv/periscope/android/ui/chat/z;->z:Z

    if-nez v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-direct {p0}, Ltv/periscope/android/ui/chat/z;->k()V

    .line 580
    :cond_1
    iget v0, p0, Ltv/periscope/android/ui/chat/z;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltv/periscope/android/ui/chat/z;->y:I

    .line 581
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/chat/z;->b(Ltv/periscope/model/chat/Message;)V

    .line 582
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->p:Ltv/periscope/android/ui/chat/am;

    invoke-interface {v0}, Ltv/periscope/android/ui/chat/am;->O()V

    .line 583
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->r:Ldnd;

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldnd;->a(Ljava/lang/String;)Z

    .line 585
    sget-object v0, Ltv/periscope/model/chat/MessageType;->b:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/chat/z;->a(Ltv/periscope/model/chat/MessageType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    const-string/jumbo v0, "CM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send chat #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltv/periscope/android/ui/chat/z;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->h:Ltv/periscope/android/chat/d;

    invoke-virtual {v0, p1}, Ltv/periscope/android/chat/d;->a(Ltv/periscope/model/chat/Message;)V

    .line 589
    :cond_2
    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/chat/z;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->v:Ltv/periscope/android/chat/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->b:Ltv/periscope/model/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->v:Ltv/periscope/android/chat/f;

    iget-object v1, p0, Ltv/periscope/android/ui/chat/z;->b:Ltv/periscope/model/u;

    invoke-virtual {v1}, Ltv/periscope/model/u;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltv/periscope/android/chat/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 300
    :cond_0
    sget-object v0, Ltv/periscope/android/ui/chat/ad;->a:[I

    iget-object v1, p0, Ltv/periscope/android/ui/chat/z;->d:Ltv/periscope/model/StreamType;

    invoke-virtual {v1}, Ltv/periscope/model/StreamType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 315
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    sget-object v1, Ltv/periscope/android/ui/chat/ChatState;->a:Ltv/periscope/android/ui/chat/ChatState;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/chat/al;->a(Ltv/periscope/android/ui/chat/ChatState;)V

    .line 320
    :goto_1
    const-string/jumbo v0, "CM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/chat/z;->d:Ltv/periscope/model/StreamType;

    invoke-virtual {v2}, Ltv/periscope/model/StreamType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    sget-object v1, Ltv/periscope/android/ui/chat/ChatState;->b:Ltv/periscope/android/ui/chat/ChatState;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/chat/al;->a(Ltv/periscope/android/ui/chat/ChatState;)V

    goto :goto_1

    .line 306
    :pswitch_1
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    sget-object v1, Ltv/periscope/android/ui/chat/ChatState;->c:Ltv/periscope/android/ui/chat/ChatState;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/chat/al;->a(Ltv/periscope/android/ui/chat/ChatState;)V

    goto :goto_1

    .line 310
    :pswitch_2
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    sget-object v1, Ltv/periscope/android/ui/chat/ChatState;->d:Ltv/periscope/android/ui/chat/ChatState;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/chat/al;->a(Ltv/periscope/android/ui/chat/ChatState;)V

    goto :goto_1

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private k()V
    .locals 4

    .prologue
    .line 554
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    invoke-interface {v0}, Ltv/periscope/android/ui/chat/al;->M()V

    .line 557
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->f:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/chat/z;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/chat/z;->z:Z

    .line 559
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->f:Landroid/os/Handler;

    iget-object v1, p0, Ltv/periscope/android/ui/chat/z;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 560
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    .line 121
    iput-object v0, p0, Ltv/periscope/android/ui/chat/z;->u:Ltv/periscope/android/player/PlayMode;

    .line 122
    iput-object v0, p0, Ltv/periscope/android/ui/chat/z;->b:Ltv/periscope/model/u;

    .line 123
    iput-object v0, p0, Ltv/periscope/android/ui/chat/z;->v:Ltv/periscope/android/chat/f;

    .line 124
    iput-object v0, p0, Ltv/periscope/android/ui/chat/z;->c:Ljava/lang/String;

    .line 125
    return-void
.end method

.method a(IZ)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->j:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/ui/chat/al;->a(IZ)V

    .line 621
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 509
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    if-nez v0, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    sget-object v0, Ltv/periscope/model/chat/MessageType;->b:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/chat/z;->a(Ltv/periscope/model/chat/MessageType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->l:Ltv/periscope/android/api/PsUser;

    iget-object v2, v0, Ltv/periscope/android/api/PsUser;->username:Ljava/lang/String;

    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->l:Ltv/periscope/android/api/PsUser;

    iget-object v3, v0, Ltv/periscope/android/api/PsUser;->displayName:Ljava/lang/String;

    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->l:Ltv/periscope/android/api/PsUser;

    iget-object v4, v0, Ltv/periscope/android/api/PsUser;->initials:Ljava/lang/String;

    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->l:Ltv/periscope/android/api/PsUser;

    iget-object v5, v0, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->l:Ltv/periscope/android/api/PsUser;

    .line 520
    invoke-virtual {v0}, Ltv/periscope/android/api/PsUser;->getProfileUrlMedium()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->b:Ltv/periscope/model/u;

    .line 521
    invoke-virtual {v0}, Ltv/periscope/model/u;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->k:Ltv/periscope/android/player/e;

    .line 522
    invoke-interface {v0}, Ltv/periscope/android/player/e;->p()J

    move-result-wide v8

    .line 523
    invoke-static {}, Ldna;->b()J

    move-result-wide v10

    move-object v1, p1

    .line 514
    invoke-static/range {v1 .. v11}, Ltv/periscope/model/chat/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JJ)Ltv/periscope/model/chat/Message;

    move-result-object v0

    .line 527
    iget-object v1, p0, Ltv/periscope/android/ui/chat/z;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltv/periscope/android/ui/chat/z;->i:Ltv/periscope/android/chat/a;

    iget-object v2, p0, Ltv/periscope/android/ui/chat/z;->c:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ltv/periscope/android/chat/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/chat/z;->b(Ltv/periscope/model/chat/Message;)V

    .line 529
    const-string/jumbo v0, "CM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ghosted identical message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :cond_2
    iget-boolean v1, p0, Ltv/periscope/android/ui/chat/z;->A:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Ltv/periscope/android/ui/chat/z;->i:Ltv/periscope/android/chat/a;

    invoke-interface {v1, p1}, Ltv/periscope/android/chat/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 531
    iget-object v1, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    new-instance v2, Ltv/periscope/android/ui/chat/aa;

    invoke-direct {v2, p0, v0}, Ltv/periscope/android/ui/chat/aa;-><init>(Ltv/periscope/android/ui/chat/z;Ltv/periscope/model/chat/Message;)V

    new-instance v3, Ltv/periscope/android/ui/chat/ab;

    invoke-direct {v3, p0}, Ltv/periscope/android/ui/chat/ab;-><init>(Ltv/periscope/android/ui/chat/z;)V

    invoke-interface {v1, v0, v2, v3}, Ltv/periscope/android/ui/chat/al;->a(Ltv/periscope/model/chat/Message;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 543
    :cond_3
    invoke-direct {p0, v0}, Ltv/periscope/android/ui/chat/z;->d(Ltv/periscope/model/chat/Message;)V

    goto/16 :goto_0
.end method

.method public a(Ltv/periscope/android/chat/d;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Ltv/periscope/android/ui/chat/z;->h:Ltv/periscope/android/chat/d;

    .line 110
    return-void
.end method

.method public a(Ltv/periscope/android/chat/f;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Ltv/periscope/android/ui/chat/z;->v:Ltv/periscope/android/chat/f;

    .line 142
    return-void
.end method

.method public a(Ltv/periscope/android/player/PlayMode;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Ltv/periscope/android/ui/chat/z;->u:Ltv/periscope/android/player/PlayMode;

    .line 130
    return-void
.end method

.method public a(Ltv/periscope/android/ui/chat/al;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    .line 115
    invoke-virtual {p0}, Ltv/periscope/android/ui/chat/z;->d()V

    .line 116
    return-void
.end method

.method public a(Ltv/periscope/model/StreamType;Ltv/periscope/model/u;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Ltv/periscope/android/ui/chat/z;->d:Ltv/periscope/model/StreamType;

    .line 135
    iput-object p2, p0, Ltv/periscope/android/ui/chat/z;->b:Ltv/periscope/model/u;

    .line 136
    invoke-direct {p0}, Ltv/periscope/android/ui/chat/z;->j()V

    .line 137
    return-void
.end method

.method public a(Ltv/periscope/model/chat/Message;)V
    .locals 0

    .prologue
    .line 550
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/chat/z;->b(Ltv/periscope/model/chat/Message;)V

    .line 551
    return-void
.end method

.method public a(Ltv/periscope/model/chat/Message;Z)V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->e:Landroid/content/res/Resources;

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/s;->a(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Ltv/periscope/android/ui/chat/z;->a(IZ)V

    .line 613
    return-void
.end method

.method public a(Ltv/periscope/model/chat/MessageType;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    sget-object v2, Ltv/periscope/model/chat/MessageType;->d:Ltv/periscope/model/chat/MessageType;

    if-ne v2, p1, :cond_2

    .line 151
    invoke-direct {p0}, Ltv/periscope/android/ui/chat/z;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ltv/periscope/model/StreamType;->b:Ltv/periscope/model/StreamType;

    iget-object v3, p0, Ltv/periscope/android/ui/chat/z;->d:Ltv/periscope/model/StreamType;

    invoke-virtual {v2, v3}, Ltv/periscope/model/StreamType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 151
    goto :goto_0

    .line 154
    :cond_2
    iget-object v2, p0, Ltv/periscope/android/ui/chat/z;->j:Ltv/periscope/android/player/d;

    invoke-interface {v2}, Ltv/periscope/android/player/d;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Ltv/periscope/android/ui/chat/z;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Ltv/periscope/model/StreamType;->b:Ltv/periscope/model/StreamType;

    iget-object v3, p0, Ltv/periscope/android/ui/chat/z;->d:Ltv/periscope/model/StreamType;

    invoke-virtual {v2, v3}, Ltv/periscope/model/StreamType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Ltv/periscope/android/ui/chat/z;->w:I

    return v0
.end method

.method b(IZ)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 631
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->j:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    invoke-interface {v0, p1, p2}, Ltv/periscope/android/ui/chat/al;->b(IZ)V

    .line 634
    :cond_0
    return-void
.end method

.method public b(Ltv/periscope/model/chat/Message;)V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->j:Ltv/periscope/android/player/d;

    invoke-interface {v0}, Ltv/periscope/android/player/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->r:Ldnd;

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ldnd;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    invoke-interface {v0, p1}, Ltv/periscope/android/ui/chat/al;->a(Ltv/periscope/model/chat/Message;)V

    .line 641
    :cond_0
    return-void
.end method

.method public b(Ltv/periscope/model/chat/Message;Z)V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->e:Landroid/content/res/Resources;

    invoke-virtual {p1}, Ltv/periscope/model/chat/Message;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/s;->a(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Ltv/periscope/android/ui/chat/z;->b(IZ)V

    .line 626
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Ltv/periscope/android/ui/chat/z;->y:I

    return v0
.end method

.method public c(Ltv/periscope/model/chat/Message;)V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    invoke-interface {v0}, Ltv/periscope/android/ui/chat/al;->N()V

    .line 648
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 178
    iput v0, p0, Ltv/periscope/android/ui/chat/z;->w:I

    .line 179
    iput v0, p0, Ltv/periscope/android/ui/chat/z;->x:I

    .line 180
    iput v0, p0, Ltv/periscope/android/ui/chat/z;->y:I

    .line 181
    return-void
.end method

.method public e()V
    .locals 10

    .prologue
    .line 185
    sget-object v0, Ltv/periscope/model/chat/MessageType;->d:Ltv/periscope/model/chat/MessageType;

    invoke-virtual {p0, v0}, Ltv/periscope/android/ui/chat/z;->a(Ltv/periscope/model/chat/MessageType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->l:Ltv/periscope/android/api/PsUser;

    iget-object v0, v0, Ltv/periscope/android/api/PsUser;->username:Ljava/lang/String;

    iget-object v1, p0, Ltv/periscope/android/ui/chat/z;->l:Ltv/periscope/android/api/PsUser;

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->displayName:Ljava/lang/String;

    iget-object v2, p0, Ltv/periscope/android/ui/chat/z;->l:Ltv/periscope/android/api/PsUser;

    iget-object v2, v2, Ltv/periscope/android/api/PsUser;->initials:Ljava/lang/String;

    iget-object v3, p0, Ltv/periscope/android/ui/chat/z;->l:Ltv/periscope/android/api/PsUser;

    iget-object v3, v3, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    iget-object v4, p0, Ltv/periscope/android/ui/chat/z;->l:Ltv/periscope/android/api/PsUser;

    .line 192
    invoke-virtual {v4}, Ltv/periscope/android/api/PsUser;->getProfileUrlMedium()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltv/periscope/android/ui/chat/z;->b:Ltv/periscope/model/u;

    .line 193
    invoke-virtual {v5}, Ltv/periscope/model/u;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Ltv/periscope/android/ui/chat/z;->k:Ltv/periscope/android/player/e;

    .line 194
    invoke-interface {v6}, Ltv/periscope/android/player/e;->p()J

    move-result-wide v6

    .line 195
    invoke-static {}, Ldna;->b()J

    move-result-wide v8

    .line 187
    invoke-static/range {v0 .. v9}, Ltv/periscope/model/chat/Message;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JJ)Ltv/periscope/model/chat/Message;

    move-result-object v0

    .line 197
    iget-object v1, p0, Ltv/periscope/android/ui/chat/z;->h:Ltv/periscope/android/chat/d;

    invoke-virtual {v1, v0}, Ltv/periscope/android/chat/d;->a(Ltv/periscope/model/chat/Message;)V

    .line 198
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->h:Ltv/periscope/android/chat/d;

    iget-object v1, p0, Ltv/periscope/android/ui/chat/z;->v:Ltv/periscope/android/chat/f;

    invoke-virtual {v0, v1}, Ltv/periscope/android/chat/d;->a(Ltv/periscope/android/chat/f;)V

    .line 200
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    if-eqz v0, :cond_0

    .line 205
    const-string/jumbo v0, "CM"

    const-string/jumbo v1, "Chat State Changed: Connecting"

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Ltv/periscope/android/ui/chat/z;->t:Ltv/periscope/android/ui/chat/al;

    sget-object v1, Ltv/periscope/android/ui/chat/ChatState;->a:Ltv/periscope/android/ui/chat/ChatState;

    invoke-interface {v0, v1}, Ltv/periscope/android/ui/chat/al;->a(Ltv/periscope/android/ui/chat/ChatState;)V

    .line 208
    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ltv/periscope/android/ui/chat/z;->j()V

    .line 213
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ltv/periscope/android/ui/chat/z;->j()V

    .line 226
    return-void
.end method
