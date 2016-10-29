.class Lcom/twitter/android/sv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/model/core/Tweet;

.field final synthetic b:Lcom/twitter/library/api/PromotedEvent;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/twitter/android/sn;


# direct methods
.method constructor <init>(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/twitter/android/sv;->f:Lcom/twitter/android/sn;

    iput-object p2, p0, Lcom/twitter/android/sv;->a:Lcom/twitter/model/core/Tweet;

    iput-object p3, p0, Lcom/twitter/android/sv;->b:Lcom/twitter/library/api/PromotedEvent;

    iput-object p4, p0, Lcom/twitter/android/sv;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/sv;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/twitter/android/sv;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 861
    iget-object v0, p0, Lcom/twitter/android/sv;->f:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/sv;->a:Lcom/twitter/model/core/Tweet;

    iget-object v2, p0, Lcom/twitter/android/sv;->b:Lcom/twitter/library/api/PromotedEvent;

    iget-object v3, p0, Lcom/twitter/android/sv;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/sv;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/sv;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return-void
.end method
