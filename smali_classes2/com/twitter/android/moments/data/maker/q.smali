.class public Lcom/twitter/android/moments/data/maker/q;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/data/maker/f;

.field private final b:Lcom/twitter/android/moments/data/maker/r;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/data/maker/f;Lcom/twitter/android/moments/data/maker/r;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/q;->a:Lcom/twitter/android/moments/data/maker/f;

    .line 25
    iput-object p2, p0, Lcom/twitter/android/moments/data/maker/q;->b:Lcom/twitter/android/moments/data/maker/r;

    .line 26
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 29
    invoke-static {p1, p2}, Lcom/twitter/android/moments/data/maker/n;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/twitter/android/moments/data/maker/q;->a:Lcom/twitter/android/moments/data/maker/f;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/data/maker/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/twitter/android/moments/data/maker/q;->b:Lcom/twitter/android/moments/data/maker/r;

    invoke-virtual {v1, v0, p1, p2}, Lcom/twitter/android/moments/data/maker/r;->a(Ljava/lang/String;J)V

    .line 33
    :cond_0
    return-void
.end method
