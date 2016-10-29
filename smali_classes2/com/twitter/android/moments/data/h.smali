.class public Lcom/twitter/android/moments/data/h;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Laio;

.field private final b:Lcom/twitter/android/moments/data/ae;

.field private final c:Lahp;

.field private d:Lcom/twitter/android/moments/data/k;

.field private e:Lrx/ap;


# direct methods
.method public constructor <init>(Laio;Lcom/twitter/android/moments/data/ae;Lahp;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/twitter/android/moments/data/h;->a:Laio;

    .line 29
    iput-object p2, p0, Lcom/twitter/android/moments/data/h;->b:Lcom/twitter/android/moments/data/ae;

    .line 30
    iput-object p3, p0, Lcom/twitter/android/moments/data/h;->c:Lahp;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/data/h;)Laio;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/twitter/android/moments/data/h;->a:Laio;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/data/h;Lcom/twitter/model/moments/ad;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/data/h;->b(Lcom/twitter/model/moments/ad;)V

    return-void
.end method

.method static synthetic b(Lcom/twitter/android/moments/data/h;)Lcom/twitter/android/moments/data/ae;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/twitter/android/moments/data/h;->b:Lcom/twitter/android/moments/data/ae;

    return-object v0
.end method

.method private b(Lcom/twitter/model/moments/ad;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/android/moments/data/h;->a:Laio;

    iget-boolean v1, p1, Lcom/twitter/model/moments/ad;->k:Z

    invoke-virtual {v0, v1}, Laio;->a(Z)V

    .line 70
    iget-object v0, p0, Lcom/twitter/android/moments/data/h;->a:Laio;

    new-instance v1, Lcom/twitter/android/moments/data/j;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/data/j;-><init>(Lcom/twitter/android/moments/data/h;Lcom/twitter/model/moments/ad;)V

    invoke-virtual {v0, v1}, Laio;->a(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method static synthetic c(Lcom/twitter/android/moments/data/h;)Lahp;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/twitter/android/moments/data/h;->c:Lahp;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/moments/data/h;)Lcom/twitter/android/moments/data/k;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/twitter/android/moments/data/h;->d:Lcom/twitter/android/moments/data/k;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/twitter/android/moments/data/h;->e:Lrx/ap;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/twitter/android/moments/data/h;->e:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 92
    iput-object v1, p0, Lcom/twitter/android/moments/data/h;->e:Lrx/ap;

    .line 94
    :cond_0
    invoke-virtual {p0, v1}, Lcom/twitter/android/moments/data/h;->a(Lcom/twitter/android/moments/data/k;)V

    .line 95
    return-void
.end method

.method public a(Lcom/twitter/android/moments/data/k;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/twitter/android/moments/data/h;->d:Lcom/twitter/android/moments/data/k;

    .line 36
    return-void
.end method

.method public a(Lcom/twitter/model/moments/ad;)V
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/twitter/android/moments/data/h;->a()V

    .line 51
    invoke-static {p1}, Lcey;->a(Lcom/twitter/model/moments/ad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/data/h;->a:Laio;

    invoke-virtual {v0}, Laio;->b()V

    .line 53
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/data/h;->b(Lcom/twitter/model/moments/ad;)V

    .line 55
    iget-object v0, p0, Lcom/twitter/android/moments/data/h;->b:Lcom/twitter/android/moments/data/ae;

    iget-wide v2, p1, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/moments/data/ae;->c(J)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/i;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/i;-><init>(Lcom/twitter/android/moments/data/h;)V

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/data/h;->e:Lrx/ap;

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/data/h;->a:Laio;

    invoke-virtual {v0}, Laio;->a()V

    goto :goto_0
.end method

.method public b()Lcom/twitter/ui/widget/ToggleTwitterButton;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/android/moments/data/h;->a:Laio;

    invoke-virtual {v0}, Laio;->c()Lcom/twitter/ui/widget/ToggleTwitterButton;

    move-result-object v0

    return-object v0
.end method
