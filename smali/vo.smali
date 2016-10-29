.class public final Lvo;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lvm;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/twitter/android/as;

.field private b:Lcom/twitter/android/as;

.field private c:Lcom/twitter/android/as;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lvo;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lvo;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lvo;)Lcom/twitter/android/as;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lvo;->a:Lcom/twitter/android/as;

    return-object v0
.end method

.method static synthetic c(Lvo;)Lcom/twitter/android/as;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lvo;->b:Lcom/twitter/android/as;

    return-object v0
.end method

.method static synthetic d(Lvo;)Lcom/twitter/android/as;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lvo;->c:Lcom/twitter/android/as;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lvo;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lvo;->d:Landroid/content/Context;

    .line 54
    return-object p0
.end method

.method public a(Lcom/twitter/android/as;)Lvo;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lvo;->a:Lcom/twitter/android/as;

    .line 61
    return-object p0
.end method

.method public b()Lvm;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lvo;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lvo;->a:Lcom/twitter/android/as;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lvo;->b:Lcom/twitter/android/as;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lvo;->c:Lcom/twitter/android/as;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v0, Lvm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvm;-><init>(Lvo;Lvn;)V

    return-object v0
.end method

.method public b(Lcom/twitter/android/as;)Lvo;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lvo;->b:Lcom/twitter/android/as;

    .line 68
    return-object p0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lvo;->b()Lvm;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/twitter/android/as;)Lvo;
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lvo;->c:Lcom/twitter/android/as;

    .line 75
    return-object p0
.end method
