.class Lcom/twitter/android/moments/data/ba;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/twitter/android/moments/data/az;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/az;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/twitter/android/moments/data/ba;->b:Lcom/twitter/android/moments/data/az;

    iput-object p2, p0, Lcom/twitter/android/moments/data/ba;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/twitter/android/moments/data/ba;->b:Lcom/twitter/android/moments/data/az;

    iget-object v1, p0, Lcom/twitter/android/moments/data/ba;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/twitter/android/moments/data/az;->a(Lcom/twitter/android/moments/data/az;Ljava/util/List;)V

    .line 171
    return-void
.end method
