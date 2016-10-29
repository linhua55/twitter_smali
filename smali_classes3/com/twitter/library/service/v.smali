.class public Lcom/twitter/library/service/v;
.super Lcom/twitter/internal/android/service/AsyncOperation;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/internal/android/service/AsyncOperation",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:J

.field private final b:Landroid/content/Context;

.field private final c:Landroid/app/NotificationManager;

.field private g:[I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 35
    const-class v0, Lcom/twitter/library/service/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/internal/android/service/AsyncOperation;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/service/v;->b:Landroid/content/Context;

    .line 37
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/twitter/library/service/v;->c:Landroid/app/NotificationManager;

    .line 38
    iput-wide p2, p0, Lcom/twitter/library/service/v;->a:J

    .line 39
    return-void
.end method

.method private a(JLjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/twitter/library/service/v;->a(JLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(JLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/library/service/v;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/twitter/library/service/v;->a(Landroid/content/Context;JLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const-string/jumbo v0, "notification"

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 97
    invoke-static {p0, p1, p2}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lcom/twitter/library/provider/dm;->d()Lcom/twitter/database/schema/TwitterSchema;

    move-result-object v1

    const-class v4, Lbgg;

    .line 99
    invoke-interface {v1, v4}, Lcom/twitter/database/schema/TwitterSchema;->b(Ljava/lang/Class;)Lcom/twitter/database/model/q;

    move-result-object v1

    .line 100
    invoke-interface {v1, p3, p4}, Lcom/twitter/database/model/q;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/twitter/database/model/j;

    move-result-object v4

    .line 102
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Lcom/twitter/database/model/j;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, v4, Lcom/twitter/database/model/j;->a:Ljava/lang/Object;

    check-cast v1, Lbgh;

    invoke-interface {v1}, Lbgh;->a()I

    move-result v1

    .line 104
    if-lez v1, :cond_0

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lcom/twitter/database/model/j;->close()V

    throw v0

    :cond_1
    invoke-virtual {v4}, Lcom/twitter/database/model/j;->close()V

    .line 114
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {p0}, Lcom/twitter/library/provider/ar;->a(Landroid/content/Context;)Lcom/twitter/library/provider/ar;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/twitter/library/provider/ar;->c(J)I

    move-result v1

    .line 118
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v3, p3, v0}, Lcom/twitter/library/provider/dm;->c(Ljava/lang/String;[Ljava/lang/String;)I

    .line 123
    return-object v2
.end method


# virtual methods
.method public a(I)Lcom/twitter/library/service/v;
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/twitter/library/service/v;->h:I

    .line 138
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/library/service/v;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/twitter/library/service/v;->i:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public a([I)Lcom/twitter/library/service/v;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/twitter/library/service/v;->g:[I

    .line 128
    return-object p0
.end method

.method protected final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 48
    iget-wide v2, p0, Lcom/twitter/library/service/v;->a:J

    .line 49
    iget v0, p0, Lcom/twitter/library/service/v;->h:I

    packed-switch v0, :pswitch_data_0

    .line 79
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    iget-object v4, p0, Lcom/twitter/library/service/v;->g:[I

    .line 52
    iget-object v0, p0, Lcom/twitter/library/service/v;->b:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v4}, Lcom/twitter/library/provider/dm;->a([I)I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, v4

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    array-length v2, v4

    :goto_1
    if-ge v1, v2, :cond_0

    aget v3, v4, v1

    .line 56
    iget-object v5, p0, Lcom/twitter/library/service/v;->c:Landroid/app/NotificationManager;

    invoke-virtual {v5, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    :pswitch_1
    sget-object v0, Lbge;->f:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcom/twitter/library/service/v;->a(JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/library/service/v;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lbge;->g:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lcom/twitter/library/service/v;->a(JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v4, Lbge;->g:Ljava/lang/String;

    aput-object v4, v0, v1

    const-string/jumbo v4, "aggregation_data"

    .line 70
    invoke-static {v4}, Lbar;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    .line 69
    invoke-static {v0}, Lbar;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/library/service/v;->i:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 68
    invoke-direct {p0, v2, v3, v0, v4}, Lcom/twitter/library/service/v;->a(JLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 75
    :pswitch_3
    const-string/jumbo v0, "type"

    const/16 v1, 0xf

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lbar;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/twitter/library/service/v;->a(JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/twitter/library/service/v;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/twitter/library/service/v;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
