.class Lcom/twitter/android/client/aa;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/library/client/Session;

.field final synthetic b:J

.field final synthetic c:Lcom/twitter/android/client/y;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/y;Lcom/twitter/library/client/Session;J)V
    .locals 1

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/twitter/android/client/aa;->c:Lcom/twitter/android/client/y;

    iput-object p2, p0, Lcom/twitter/android/client/aa;->a:Lcom/twitter/library/client/Session;

    iput-wide p3, p0, Lcom/twitter/android/client/aa;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/twitter/android/client/aa;->a:Lcom/twitter/library/client/Session;

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 1137
    iget-wide v2, p0, Lcom/twitter/android/client/aa;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/client/ai;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 1138
    iget-object v1, p0, Lcom/twitter/android/client/aa;->c:Lcom/twitter/android/client/y;

    invoke-static {v1}, Lcom/twitter/android/client/y;->a(Lcom/twitter/android/client/y;)Landroid/app/NotificationManager;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1139
    return-void
.end method
