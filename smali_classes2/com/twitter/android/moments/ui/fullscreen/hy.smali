.class Lcom/twitter/android/moments/ui/fullscreen/hy;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/model/moments/viewmodels/p;

.field private final d:Lcet;

.field private final e:Lcom/twitter/library/client/bd;

.field private final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/twitter/android/moments/ui/fullscreen/hy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/moments/ui/fullscreen/hy;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;JLcom/twitter/model/moments/viewmodels/p;Lcet;Lcom/twitter/library/client/bd;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/hy;->b:Landroid/content/Context;

    .line 31
    iput-wide p2, p0, Lcom/twitter/android/moments/ui/fullscreen/hy;->f:J

    .line 32
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/hy;->c:Lcom/twitter/model/moments/viewmodels/p;

    .line 33
    iput-object p5, p0, Lcom/twitter/android/moments/ui/fullscreen/hy;->d:Lcet;

    .line 34
    iput-object p6, p0, Lcom/twitter/android/moments/ui/fullscreen/hy;->e:Lcom/twitter/library/client/bd;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/hy;)J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hy;->f:J

    return-wide v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/hy;)Lcet;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hy;->d:Lcet;

    return-object v0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hy;->c:Lcom/twitter/model/moments/viewmodels/p;

    invoke-interface {v0, p1}, Lcom/twitter/model/moments/viewmodels/p;->c(I)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/hy;->c:Lcom/twitter/model/moments/viewmodels/p;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/twitter/model/moments/viewmodels/p;->c(I)Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 50
    sget-boolean v1, Lcom/twitter/android/moments/ui/fullscreen/hy;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/hy;->e:Lcom/twitter/library/client/bd;

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/hz;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/hy;->b:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v0}, Lcom/twitter/android/moments/ui/fullscreen/hz;-><init>(Lcom/twitter/android/moments/ui/fullscreen/hy;Landroid/content/Context;Lcom/twitter/model/moments/ak;)V

    invoke-virtual {v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 57
    :cond_1
    return-void

    .line 53
    :cond_2
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v0

    goto :goto_0
.end method
