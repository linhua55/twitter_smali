.class public Lcom/twitter/android/moments/data/maker/m;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lrx/t;

.field public final b:Lrx/t;


# direct methods
.method public constructor <init>(Lrx/t;Lrx/t;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/m;->a:Lrx/t;

    .line 88
    iput-object p2, p0, Lcom/twitter/android/moments/data/maker/m;->b:Lrx/t;

    .line 89
    return-void
.end method

.method public static a()Lcom/twitter/android/moments/data/maker/m;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/twitter/android/moments/data/maker/m;

    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v1

    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/moments/data/maker/m;-><init>(Lrx/t;Lrx/t;)V

    return-object v0
.end method
