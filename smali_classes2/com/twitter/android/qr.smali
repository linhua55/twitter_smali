.class public Lcom/twitter/android/qr;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Lcom/twitter/android/xy;

.field private b:Lcom/twitter/android/qp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/qr;)Lcom/twitter/android/xy;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/twitter/android/qr;->a:Lcom/twitter/android/xy;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/qr;)Lcom/twitter/android/qp;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/twitter/android/qr;->b:Lcom/twitter/android/qp;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/qq;
    .locals 2

    .prologue
    .line 431
    new-instance v0, Lcom/twitter/android/qq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/qq;-><init>(Lcom/twitter/android/qr;Lcom/twitter/android/ql;)V

    return-object v0
.end method

.method public a(Lcom/twitter/android/qp;)Lcom/twitter/android/qr;
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/twitter/android/qr;->b:Lcom/twitter/android/qp;

    .line 426
    return-object p0
.end method

.method public a(Lcom/twitter/android/xy;)Lcom/twitter/android/qr;
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/twitter/android/qr;->a:Lcom/twitter/android/xy;

    .line 420
    return-object p0
.end method
