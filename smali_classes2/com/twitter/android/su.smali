.class Lcom/twitter/android/su;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/timeline/bp;

.field final synthetic b:Lcom/twitter/library/api/PromotedEvent;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/twitter/android/sn;


# direct methods
.method constructor <init>(Lcom/twitter/android/sn;Lcom/twitter/android/timeline/bp;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/twitter/android/su;->e:Lcom/twitter/android/sn;

    iput-object p2, p0, Lcom/twitter/android/su;->a:Lcom/twitter/android/timeline/bp;

    iput-object p3, p0, Lcom/twitter/android/su;->b:Lcom/twitter/library/api/PromotedEvent;

    iput-object p4, p0, Lcom/twitter/android/su;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/su;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 854
    iget-object v1, p0, Lcom/twitter/android/su;->e:Lcom/twitter/android/sn;

    iget-object v0, p0, Lcom/twitter/android/su;->a:Lcom/twitter/android/timeline/bp;

    check-cast v0, Lcom/twitter/android/timeline/ca;

    iget-object v2, p0, Lcom/twitter/android/su;->b:Lcom/twitter/library/api/PromotedEvent;

    iget-object v3, p0, Lcom/twitter/android/su;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/su;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/sn;Lcom/twitter/android/timeline/ca;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    return-void
.end method
