.class Lcom/twitter/android/aq;
.super Lcom/twitter/util/concurrent/b;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/hn;

.field private final b:Lcom/twitter/library/widget/InlineDismissView;

.field private final c:Lcom/twitter/android/timeline/bp;

.field private final d:Lcid;


# direct methods
.method constructor <init>(Lcom/twitter/android/hn;Lcom/twitter/library/widget/InlineDismissView;Lcom/twitter/android/timeline/bp;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/twitter/util/concurrent/b;-><init>()V

    .line 23
    new-instance v0, Lcid;

    new-instance v1, Lcib;

    invoke-direct {v1}, Lcib;-><init>()V

    invoke-direct {v0, v1}, Lcid;-><init>(Lcib;)V

    iput-object v0, p0, Lcom/twitter/android/aq;->d:Lcid;

    .line 28
    iput-object p1, p0, Lcom/twitter/android/aq;->a:Lcom/twitter/android/hn;

    .line 29
    iput-object p2, p0, Lcom/twitter/android/aq;->b:Lcom/twitter/library/widget/InlineDismissView;

    .line 30
    iput-object p3, p0, Lcom/twitter/android/aq;->c:Lcom/twitter/android/timeline/bp;

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 43
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 44
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/aq;->d:Lcid;

    invoke-virtual {v0, p1}, Lcid;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/twitter/android/aq;->d:Lcid;

    invoke-virtual {v0, p1}, Lcid;->b(Landroid/database/Cursor;)Lcom/twitter/model/timeline/l;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/twitter/android/aq;->c:Lcom/twitter/android/timeline/bp;

    iget-wide v2, v1, Lcom/twitter/android/timeline/bp;->n:J

    .line 47
    iget-object v1, p0, Lcom/twitter/android/aq;->a:Lcom/twitter/android/hn;

    invoke-interface {v1, v2, v3, v0}, Lcom/twitter/android/hn;->a(JLcom/twitter/model/timeline/l;)Lcom/twitter/model/timeline/l;

    .line 48
    iget-object v1, p0, Lcom/twitter/android/aq;->a:Lcom/twitter/android/hn;

    invoke-interface {v1, v2, v3}, Lcom/twitter/android/hn;->a(J)Z

    .line 49
    iget-object v1, p0, Lcom/twitter/android/aq;->b:Lcom/twitter/library/widget/InlineDismissView;

    invoke-virtual {v1, v0}, Lcom/twitter/library/widget/InlineDismissView;->setDismissInfo(Lcom/twitter/model/timeline/l;)V

    .line 51
    :cond_0
    return-void
.end method
