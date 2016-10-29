.class public Lcom/twitter/android/events/c;
.super Lcom/twitter/android/timeline/o;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/twitter/model/topic/l;

.field public final d:I

.field public final e:Lcom/twitter/android/widget/TopicView$TopicData;

.field public final f:Lcss;

.field public final g:I


# direct methods
.method public constructor <init>(Lcom/twitter/android/events/d;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/o;-><init>(Lcom/twitter/android/timeline/bq;)V

    .line 23
    invoke-static {p1}, Lcom/twitter/android/events/d;->a(Lcom/twitter/android/events/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/events/c;->a:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/twitter/android/events/d;->b(Lcom/twitter/android/events/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/events/c;->b:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/twitter/android/events/d;->c(Lcom/twitter/android/events/d;)Lcom/twitter/model/topic/l;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/events/c;->c:Lcom/twitter/model/topic/l;

    .line 26
    invoke-static {p1}, Lcom/twitter/android/events/d;->d(Lcom/twitter/android/events/d;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/events/c;->d:I

    .line 27
    invoke-static {p1}, Lcom/twitter/android/events/d;->e(Lcom/twitter/android/events/d;)Lcom/twitter/android/widget/TopicView$TopicData;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/events/c;->e:Lcom/twitter/android/widget/TopicView$TopicData;

    .line 28
    invoke-static {p1}, Lcom/twitter/android/events/d;->f(Lcom/twitter/android/events/d;)Lcss;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/events/c;->f:Lcss;

    .line 29
    invoke-static {p1}, Lcom/twitter/android/events/d;->g(Lcom/twitter/android/events/d;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/events/c;->g:I

    .line 30
    return-void
.end method
