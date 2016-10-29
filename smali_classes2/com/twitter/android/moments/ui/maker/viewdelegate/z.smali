.class Lcom/twitter/android/moments/ui/maker/viewdelegate/z;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lrx/subjects/k;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/viewdelegate/x;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/x;Lrx/subjects/k;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/z;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/x;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/z;->a:Lrx/subjects/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/z;->a:Lrx/subjects/k;

    sget-object v1, Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ItemCollectionAnimation$AnimationState;

    invoke-virtual {v0, v1}, Lrx/subjects/k;->b_(Ljava/lang/Object;)V

    .line 57
    return-void
.end method
