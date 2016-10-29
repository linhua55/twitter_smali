.class final Lcom/twitter/android/initialization/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(JLandroid/content/Context;)V
    .locals 1

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/twitter/android/initialization/a;->a:J

    iput-object p3, p0, Lcom/twitter/android/initialization/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 143
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/initialization/a;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/client/bk;->b(J)Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->b()Lcom/twitter/library/client/Session$LoginStatus;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/client/Session$LoginStatus;->a:Lcom/twitter/library/client/Session$LoginStatus;

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/twitter/android/initialization/a;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/android/initialization/a;->a:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/dm;->b(Landroid/content/Context;J)V

    .line 147
    iget-wide v0, p0, Lcom/twitter/android/initialization/a;->a:J

    invoke-static {v0, v1}, Lcom/twitter/library/scribe/ScribeDatabaseHelper;->b(J)V

    .line 148
    iget-object v0, p0, Lcom/twitter/android/initialization/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v0

    .line 149
    iget-wide v2, p0, Lcom/twitter/android/initialization/a;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/provider/ar;->e(J)I

    .line 150
    iget-wide v2, p0, Lcom/twitter/android/initialization/a;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/provider/ar;->d(J)I

    .line 152
    :cond_0
    return-void
.end method
