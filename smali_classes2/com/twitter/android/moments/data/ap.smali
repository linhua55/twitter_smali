.class public Lcom/twitter/android/moments/data/ap;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/data/ar;

.field private final b:Lcom/twitter/android/moments/ui/guide/q;

.field private final c:Lahl;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/data/ar;Lcom/twitter/android/moments/ui/guide/q;Lahl;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/twitter/android/moments/data/ap;->a:Lcom/twitter/android/moments/data/ar;

    .line 23
    iput-object p2, p0, Lcom/twitter/android/moments/data/ap;->b:Lcom/twitter/android/moments/ui/guide/q;

    .line 24
    iput-object p3, p0, Lcom/twitter/android/moments/data/ap;->c:Lahl;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/data/ap;)Lahl;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/twitter/android/moments/data/ap;->c:Lahl;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/data/ap;)Lcom/twitter/android/moments/ui/guide/q;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/twitter/android/moments/data/ap;->b:Lcom/twitter/android/moments/ui/guide/q;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/moments/viewmodels/MomentModule;)V
    .locals 5

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/twitter/android/moments/viewmodels/MomentModule;->f()Lcqc;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/twitter/android/moments/data/ap;->a:Lcom/twitter/android/moments/data/ar;

    invoke-virtual {v1}, Lcom/twitter/android/moments/data/ar;->a()V

    .line 31
    iget-object v1, v0, Lcqc;->d:Lcom/twitter/model/moments/x;

    .line 32
    iget-object v2, p0, Lcom/twitter/android/moments/data/ap;->a:Lcom/twitter/android/moments/data/ar;

    iget-object v3, v1, Lcom/twitter/model/moments/x;->b:Ljava/lang/String;

    iget v4, v1, Lcom/twitter/model/moments/x;->c:I

    iget v1, v1, Lcom/twitter/model/moments/x;->d:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/twitter/android/moments/data/ar;->a(Ljava/lang/String;II)V

    .line 33
    iget-object v1, p0, Lcom/twitter/android/moments/data/ap;->a:Lcom/twitter/android/moments/data/ar;

    iget-object v0, v0, Lcqc;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/data/ar;->a(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/twitter/android/moments/data/ap;->a:Lcom/twitter/android/moments/data/ar;

    new-instance v1, Lcom/twitter/android/moments/data/aq;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/data/aq;-><init>(Lcom/twitter/android/moments/data/ap;Lcom/twitter/android/moments/viewmodels/MomentModule;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/data/ar;->a(Landroid/view/View$OnClickListener;)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/data/ap;->a:Lcom/twitter/android/moments/data/ar;

    invoke-virtual {v0}, Lcom/twitter/android/moments/data/ar;->b()V

    goto :goto_0
.end method
