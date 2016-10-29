.class public Lcom/twitter/android/moments/ui/fullscreen/n;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lajj;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/cm;

.field private final c:Lcom/twitter/android/moments/ui/fullscreen/ab;

.field private final d:Lcom/twitter/model/moments/viewmodels/ac;

.field private final e:Lcom/twitter/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/y",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lajj;Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/android/moments/ui/fullscreen/ab;Lcom/twitter/model/moments/viewmodels/ac;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/o;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/o;-><init>(Lcom/twitter/android/moments/ui/fullscreen/n;)V

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->e:Lcom/twitter/util/y;

    .line 28
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->a:Lajj;

    .line 29
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->b:Lcom/twitter/android/moments/ui/fullscreen/cm;

    .line 30
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->c:Lcom/twitter/android/moments/ui/fullscreen/ab;

    .line 31
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->d:Lcom/twitter/model/moments/viewmodels/ac;

    .line 32
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->a:Lajj;

    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/p;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/fullscreen/p;-><init>(Lcom/twitter/android/moments/ui/fullscreen/n;)V

    invoke-virtual {v0, v1}, Lajj;->a(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->a:Lajj;

    invoke-virtual {v0}, Lajj;->b()V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/n;)Lajj;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->a:Lajj;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/n;Z)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/n;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 64
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/n;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->a:Lajj;

    invoke-virtual {v0}, Lajj;->a()V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->a:Lajj;

    invoke-virtual {v0}, Lajj;->b()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/fullscreen/n;)Lcom/twitter/android/moments/ui/fullscreen/cm;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->b:Lcom/twitter/android/moments/ui/fullscreen/cm;

    return-object v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->c:Lcom/twitter/android/moments/ui/fullscreen/ab;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->d:Lcom/twitter/model/moments/viewmodels/ac;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/ab;->a(Lcom/twitter/model/moments/viewmodels/ac;)Lcom/twitter/model/av/Audio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->b:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cm;->c()Lcom/twitter/util/x;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->e:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 47
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->b:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cm;->c()Lcom/twitter/util/x;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->e:Lcom/twitter/util/y;

    invoke-virtual {v0, v1}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 54
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/n;->b:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cm;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/fullscreen/n;->a(Z)V

    .line 61
    return-void
.end method
