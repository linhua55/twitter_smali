.class public Lcom/twitter/android/moments/ui/fullscreen/em;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/twitter/util/q;
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
        "Lcom/twitter/util/q;",
        "Lcom/twitter/util/y",
        "<",
        "Lcom/twitter/android/moments/ui/fullscreen/Event;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/util/t;

.field private final b:Lcom/twitter/moments/core/ui/widget/capsule/b;

.field private final c:Lcom/twitter/android/moments/ui/fullscreen/TapHintView;

.field private final d:Lcom/twitter/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/android/moments/ui/fullscreen/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/TapHintView;Lcom/twitter/android/util/t;Lcom/twitter/moments/core/ui/widget/capsule/b;Lcom/twitter/util/x;Lcom/twitter/android/moments/ui/fullscreen/bs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/fullscreen/TapHintView;",
            "Lcom/twitter/android/util/t;",
            "Lcom/twitter/moments/core/ui/widget/capsule/b;",
            "Lcom/twitter/util/x",
            "<",
            "Lcom/twitter/android/moments/ui/fullscreen/Event;",
            ">;",
            "Lcom/twitter/android/moments/ui/fullscreen/bs",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/android/moments/ui/fullscreen/PageLoadingEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/en;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/en;-><init>(Lcom/twitter/android/moments/ui/fullscreen/em;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->g:Lcom/twitter/util/y;

    .line 52
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->c:Lcom/twitter/android/moments/ui/fullscreen/TapHintView;

    .line 53
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->a:Lcom/twitter/android/util/t;

    .line 54
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->b:Lcom/twitter/moments/core/ui/widget/capsule/b;

    .line 55
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->d:Lcom/twitter/util/x;

    .line 56
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->e:Lcom/twitter/android/moments/ui/fullscreen/bs;

    .line 57
    invoke-virtual {p4, p0}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 58
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->g:Lcom/twitter/util/y;

    invoke-virtual {p5, v0}, Lcom/twitter/android/moments/ui/fullscreen/bs;->a(Lcom/twitter/util/y;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/em;)Lcom/twitter/moments/core/ui/widget/capsule/b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->b:Lcom/twitter/moments/core/ui/widget/capsule/b;

    return-object v0
.end method

.method static a(Lcom/twitter/model/moments/viewmodels/i;)Z
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcey;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/i;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/i;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/i;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->b:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/i;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->c:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/em;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/em;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->a:Lcom/twitter/android/util/t;

    invoke-virtual {v0}, Lcom/twitter/android/util/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->f:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->c:Lcom/twitter/android/moments/ui/fullscreen/TapHintView;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/TapHintView;->a()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->h:Z

    .line 81
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->h:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->c:Lcom/twitter/android/moments/ui/fullscreen/TapHintView;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/TapHintView;->b()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->h:Z

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->f:Z

    .line 121
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/em;->e()V

    .line 122
    return-void
.end method

.method public a(Lcom/twitter/android/moments/ui/fullscreen/Event;)V
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/twitter/android/moments/ui/fullscreen/Event;->a()Lcom/twitter/android/moments/ui/fullscreen/Event$EventType;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/moments/ui/fullscreen/Event$EventType;->b:Lcom/twitter/android/moments/ui/fullscreen/Event$EventType;

    if-ne v0, v1, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/em;->e()V

    .line 103
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->a:Lcom/twitter/android/util/t;

    invoke-virtual {v0}, Lcom/twitter/android/util/t;->b()V

    .line 105
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/twitter/android/moments/ui/fullscreen/Event;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/em;->a(Lcom/twitter/android/moments/ui/fullscreen/Event;)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->f:Z

    .line 116
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->c:Lcom/twitter/android/moments/ui/fullscreen/TapHintView;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/TapHintView;->c()V

    .line 109
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->d:Lcom/twitter/util/x;

    invoke-virtual {v0, p0}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 110
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->e:Lcom/twitter/android/moments/ui/fullscreen/bs;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/em;->g:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/bs;->c(Lcom/twitter/util/y;)V

    .line 111
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/em;->e()V

    .line 74
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
