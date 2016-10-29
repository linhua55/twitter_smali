.class Lcom/twitter/library/provider/fg;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/ea;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/ea;I)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/twitter/library/provider/fg;->b:Lcom/twitter/library/provider/ea;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "DELETE FROM activities;"

    aput-object v1, v0, v2

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 132
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "activity_statuses_delete_trigger"

    aput-object v1, v0, v2

    const-string/jumbo v1, "activity_users_delete_trigger"

    aput-object v1, v0, v3

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->c([Ljava/lang/String;)V

    .line 133
    new-array v0, v4, [Ljava/lang/String;

    sget-object v1, Lcom/twitter/library/provider/fk;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/library/provider/fk;->b:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->d([Ljava/lang/String;)V

    .line 135
    return-void
.end method
