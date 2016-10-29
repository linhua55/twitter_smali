.class public Lcom/twitter/android/qq;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field protected static final a:Lcom/twitter/android/qq;


# instance fields
.field public final b:Lcom/twitter/android/xy;

.field public final c:Lcom/twitter/android/qp;

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lcom/twitter/android/qr;

    invoke-direct {v0}, Lcom/twitter/android/qr;-><init>()V

    invoke-virtual {v0}, Lcom/twitter/android/qr;->a()Lcom/twitter/android/qq;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/qq;->a:Lcom/twitter/android/qq;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/android/qr;)V
    .locals 1

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    invoke-static {p1}, Lcom/twitter/android/qr;->a(Lcom/twitter/android/qr;)Lcom/twitter/android/xy;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/qq;->b:Lcom/twitter/android/xy;

    .line 408
    invoke-static {p1}, Lcom/twitter/android/qr;->b(Lcom/twitter/android/qr;)Lcom/twitter/android/qp;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/qq;->c:Lcom/twitter/android/qp;

    .line 409
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/qr;Lcom/twitter/android/ql;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/twitter/android/qq;-><init>(Lcom/twitter/android/qr;)V

    return-void
.end method
