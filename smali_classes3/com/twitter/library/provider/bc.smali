.class Lcom/twitter/library/provider/bc;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/twitter/library/provider/bc;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 508
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "account_settings_account_index"

    aput-object v1, v0, v3

    const-string/jumbo v1, "activity_states_account_index"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "widget_settings_account_index"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->b([Ljava/lang/String;)V

    .line 510
    const-class v0, Lbdn;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "account_name"

    aput-object v2, v1, v3

    invoke-interface {p1, v0, v1}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 511
    const-class v0, Lbbt;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "account_name"

    aput-object v2, v1, v3

    invoke-interface {p1, v0, v1}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 512
    const-class v0, Lbiq;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "account_name"

    aput-object v2, v1, v3

    invoke-interface {p1, v0, v1}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 513
    return-void
.end method
