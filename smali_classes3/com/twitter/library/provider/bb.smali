.class Lcom/twitter/library/provider/bb;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/twitter/library/provider/bb;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 482
    const-class v0, Lbbt;

    new-instance v1, Lcom/twitter/database/model/a;

    const-string/jumbo v2, "account_id"

    sget-object v3, Lcom/twitter/database/model/ColumnDefinition$Type;->e:Lcom/twitter/database/model/ColumnDefinition$Type;

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/a;-><init>(Ljava/lang/String;Lcom/twitter/database/model/ColumnDefinition$Type;)V

    .line 484
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/twitter/database/model/a;->a(Ljava/lang/Object;Z)Lcom/twitter/database/model/a;

    move-result-object v1

    .line 485
    invoke-virtual {v1}, Lcom/twitter/database/model/a;->a()Lcom/twitter/database/model/ColumnDefinition;

    move-result-object v1

    .line 482
    invoke-interface {p1, v0, v1}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;Lcom/twitter/database/model/ColumnDefinition;)V

    .line 486
    iget-object v0, p0, Lcom/twitter/library/provider/bb;->b:Lcom/twitter/library/provider/au;

    const-string/jumbo v1, "activity_states"

    const-string/jumbo v2, "account_id"

    invoke-virtual {v0, p2, v1, v2}, Lcom/twitter/library/provider/au;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/twitter/library/provider/bb;->b:Lcom/twitter/library/provider/au;

    invoke-static {v0}, Lcom/twitter/library/provider/au;->j(Lcom/twitter/library/provider/au;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    const-class v0, Lbiq;

    new-instance v1, Lcom/twitter/database/model/a;

    const-string/jumbo v2, "account_id"

    sget-object v3, Lcom/twitter/database/model/ColumnDefinition$Type;->e:Lcom/twitter/database/model/ColumnDefinition$Type;

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/a;-><init>(Ljava/lang/String;Lcom/twitter/database/model/ColumnDefinition$Type;)V

    .line 490
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/twitter/database/model/a;->a(Ljava/lang/Object;Z)Lcom/twitter/database/model/a;

    move-result-object v1

    .line 491
    invoke-virtual {v1}, Lcom/twitter/database/model/a;->a()Lcom/twitter/database/model/ColumnDefinition;

    move-result-object v1

    .line 488
    invoke-interface {p1, v0, v1}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;Lcom/twitter/database/model/ColumnDefinition;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/provider/bb;->b:Lcom/twitter/library/provider/au;

    const-string/jumbo v1, "widget_settings"

    const-string/jumbo v2, "account_id"

    invoke-virtual {v0, p2, v1, v2}, Lcom/twitter/library/provider/au;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/twitter/library/provider/bb;->b:Lcom/twitter/library/provider/au;

    invoke-static {v0}, Lcom/twitter/library/provider/au;->g(Lcom/twitter/library/provider/au;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    const-class v0, Lbdn;

    new-instance v1, Lcom/twitter/database/model/a;

    const-string/jumbo v2, "account_id"

    sget-object v3, Lcom/twitter/database/model/ColumnDefinition$Type;->e:Lcom/twitter/database/model/ColumnDefinition$Type;

    invoke-direct {v1, v2, v3}, Lcom/twitter/database/model/a;-><init>(Ljava/lang/String;Lcom/twitter/database/model/ColumnDefinition$Type;)V

    .line 497
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/twitter/database/model/a;->a(Ljava/lang/Object;Z)Lcom/twitter/database/model/a;

    move-result-object v1

    .line 498
    invoke-virtual {v1}, Lcom/twitter/database/model/a;->a()Lcom/twitter/database/model/ColumnDefinition;

    move-result-object v1

    .line 495
    invoke-interface {p1, v0, v1}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;Lcom/twitter/database/model/ColumnDefinition;)V

    .line 499
    iget-object v0, p0, Lcom/twitter/library/provider/bb;->b:Lcom/twitter/library/provider/au;

    invoke-static {v0, v4}, Lcom/twitter/library/provider/au;->d(Lcom/twitter/library/provider/au;Z)Z

    .line 501
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/provider/bb;->b:Lcom/twitter/library/provider/au;

    const-string/jumbo v1, "account_settings"

    const-string/jumbo v2, "account_id"

    invoke-virtual {v0, p2, v1, v2}, Lcom/twitter/library/provider/au;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void
.end method
