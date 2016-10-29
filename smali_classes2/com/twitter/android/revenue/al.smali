.class Lcom/twitter/android/revenue/al;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/model/core/Tweet;

.field final synthetic b:Lcom/twitter/android/revenue/ak;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/ak;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/twitter/android/revenue/al;->b:Lcom/twitter/android/revenue/ak;

    iput-object p2, p0, Lcom/twitter/android/revenue/al;->a:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/twitter/android/revenue/al;->b:Lcom/twitter/android/revenue/ak;

    invoke-static {v0}, Lcom/twitter/android/revenue/ak;->a(Lcom/twitter/android/revenue/ak;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/twitter/library/revenue/QualifiedDwellTracker;->a()Lcom/twitter/library/revenue/QualifiedDwellTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/al;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v1}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/revenue/QualifiedDwellTracker;->a(Lcss;)V

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/revenue/al;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    iget-object v0, v0, Lcss;->c:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/twitter/android/revenue/ak;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/twitter/android/revenue/al;->b:Lcom/twitter/android/revenue/ak;

    iget-object v1, p0, Lcom/twitter/android/revenue/al;->a:Lcom/twitter/model/core/Tweet;

    iget-wide v2, v1, Lcom/twitter/model/core/Tweet;->C:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/revenue/ak;->a(J)V

    .line 125
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/revenue/al;->b:Lcom/twitter/android/revenue/ak;

    invoke-static {v0}, Lcom/twitter/android/revenue/ak;->b(Lcom/twitter/android/revenue/ak;)Lcfs;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->at:Lcom/twitter/library/api/PromotedEvent;

    iget-object v2, p0, Lcom/twitter/android/revenue/al;->a:Lcom/twitter/model/core/Tweet;

    .line 119
    invoke-virtual {v2}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v2

    .line 118
    invoke-static {v1, v2}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcfv;->a()Lcft;

    move-result-object v1

    .line 118
    invoke-interface {v0, v1}, Lcfs;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
