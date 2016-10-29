.class Lcom/twitter/library/provider/bh;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/twitter/library/provider/bh;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 26

    .prologue
    .line 143
    const-class v2, Lbdn;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/twitter/database/model/n;->a(Ljava/lang/Class;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/bh;->b:Lcom/twitter/library/provider/au;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/twitter/library/provider/au;->d(Lcom/twitter/library/provider/au;Z)Z

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/bh;->b:Lcom/twitter/library/provider/au;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/twitter/library/provider/au;->e(Lcom/twitter/library/provider/au;Z)Z

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/bh;->b:Lcom/twitter/library/provider/au;

    invoke-static {v2}, Lcom/twitter/library/provider/au;->a(Lcom/twitter/library/provider/au;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 147
    new-instance v6, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v6, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/bh;->b:Lcom/twitter/library/provider/au;

    invoke-static {v2}, Lcom/twitter/library/provider/au;->b(Lcom/twitter/library/provider/au;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const-string/jumbo v2, "interval"

    const-string/jumbo v4, "polling_interval"

    const/16 v5, 0x5a0

    .line 153
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 151
    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "account_name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "notif_id"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "notif_tweet"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "notif_mention"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "notif_message"

    aput-object v5, v2, v4

    move-object v10, v2

    .line 176
    :goto_0
    const-string/jumbo v2, "vibrate"

    const-string/jumbo v4, "vibrate"

    const/4 v5, 0x1

    .line 177
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 176
    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 178
    const-string/jumbo v2, "ringtone"

    const-string/jumbo v4, "ringtone"

    sget-object v5, Lcom/twitter/library/provider/bo;->a:Ljava/lang/String;

    .line 179
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string/jumbo v2, "light"

    const-string/jumbo v4, "use_led"

    const/4 v5, 0x1

    .line 181
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 180
    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 184
    const-string/jumbo v2, "push_flags"

    sget v3, Lcso;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/bh;->b:Lcom/twitter/library/provider/au;

    invoke-virtual {v2}, Lcom/twitter/library/provider/au;->c()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/app/common/account/a;

    .line 186
    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/bh;->b:Lcom/twitter/library/provider/au;

    .line 187
    invoke-static {v2}, Lcom/twitter/library/provider/au;->c(Lcom/twitter/library/provider/au;)Z

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v3, p2

    .line 186
    invoke-static/range {v3 .. v8}, Lcom/twitter/library/provider/ar;->a(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;ZLcom/twitter/library/provider/b;)I

    goto :goto_1

    .line 165
    :cond_0
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "account_name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "notif_id"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "notif_tweet"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "notif_mention"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "notif_message"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "interval"

    aput-object v5, v2, v4

    move-object v10, v2

    goto/16 :goto_0

    .line 191
    :cond_1
    const-string/jumbo v3, "activity_states"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    move-object v4, v10

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 192
    if-eqz v22, :cond_5

    .line 194
    :try_start_0
    new-instance v23, Landroid/content/ContentValues;

    const/4 v2, 0x5

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 195
    :cond_2
    :goto_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/library/provider/bh;->b:Lcom/twitter/library/provider/au;

    invoke-static {v3}, Lcom/twitter/library/provider/au;->d(Lcom/twitter/library/provider/au;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/app/common/account/a;

    .line 198
    if-eqz v2, :cond_2

    .line 201
    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v24

    .line 202
    new-instance v2, Lcom/twitter/library/provider/cc;

    invoke-direct {v2}, Lcom/twitter/library/provider/cc;-><init>()V

    sget v3, Lcso;->a:I

    .line 203
    invoke-virtual {v2, v3}, Lcom/twitter/library/provider/cc;->a(I)Lcom/twitter/library/provider/cc;

    move-result-object v2

    const/4 v3, 0x2

    .line 204
    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/provider/cc;->l(I)Lcom/twitter/library/provider/cc;

    move-result-object v2

    const/4 v3, 0x3

    .line 205
    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/provider/cc;->b(I)Lcom/twitter/library/provider/cc;

    move-result-object v2

    const/4 v3, 0x4

    .line 206
    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/twitter/library/provider/cc;->m(I)Lcom/twitter/library/provider/cc;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lcom/twitter/library/provider/cc;->a()Lcom/twitter/library/provider/ca;

    move-result-object v21

    .line 208
    const-string/jumbo v2, "notif_id"

    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/bh;->b:Lcom/twitter/library/provider/au;

    .line 210
    invoke-static {v2}, Lcom/twitter/library/provider/au;->a(Lcom/twitter/library/provider/au;)Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lblh;->a(Landroid/content/Context;J)Z

    move-result v20

    .line 211
    move-object/from16 v0, v21

    iget v2, v0, Lcom/twitter/library/provider/ca;->m:I

    move-object/from16 v0, v21

    iget v3, v0, Lcom/twitter/library/provider/ca;->d:I

    move-object/from16 v0, v21

    iget v4, v0, Lcom/twitter/library/provider/ca;->e:I

    move-object/from16 v0, v21

    iget v5, v0, Lcom/twitter/library/provider/ca;->f:I

    move-object/from16 v0, v21

    iget v6, v0, Lcom/twitter/library/provider/ca;->h:I

    move-object/from16 v0, v21

    iget v7, v0, Lcom/twitter/library/provider/ca;->n:I

    move-object/from16 v0, v21

    iget v8, v0, Lcom/twitter/library/provider/ca;->i:I

    move-object/from16 v0, v21

    iget v9, v0, Lcom/twitter/library/provider/ca;->o:I

    move-object/from16 v0, v21

    iget v10, v0, Lcom/twitter/library/provider/ca;->p:I

    move-object/from16 v0, v21

    iget v11, v0, Lcom/twitter/library/provider/ca;->q:I

    move-object/from16 v0, v21

    iget v12, v0, Lcom/twitter/library/provider/ca;->r:I

    move-object/from16 v0, v21

    iget v13, v0, Lcom/twitter/library/provider/ca;->s:I

    move-object/from16 v0, v21

    iget v14, v0, Lcom/twitter/library/provider/ca;->j:I

    move-object/from16 v0, v21

    iget v15, v0, Lcom/twitter/library/provider/ca;->k:I

    move-object/from16 v0, v21

    iget v0, v0, Lcom/twitter/library/provider/ca;->l:I

    move/from16 v16, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/twitter/library/provider/ca;->t:I

    move/from16 v17, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/twitter/library/provider/ca;->u:I

    move/from16 v18, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/twitter/library/provider/ca;->v:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/twitter/library/provider/ca;->g:I

    move/from16 v21, v0

    invoke-static/range {v2 .. v21}, Lcom/twitter/library/provider/NotificationSetting;->a(IIIIIIIIIIIIIIIIIIZI)I

    move-result v2

    .line 220
    const-string/jumbo v3, "push_flags"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/bh;->b:Lcom/twitter/library/provider/au;

    invoke-static {v2}, Lcom/twitter/library/provider/au;->b(Lcom/twitter/library/provider/au;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 224
    const-string/jumbo v2, "interval"

    const/4 v3, 0x5

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/bh;->b:Lcom/twitter/library/provider/au;

    .line 227
    invoke-static {v2}, Lcom/twitter/library/provider/au;->c(Lcom/twitter/library/provider/au;)Z

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v3, p2

    move-wide/from16 v4, v24

    move-object/from16 v6, v23

    .line 226
    invoke-static/range {v3 .. v8}, Lcom/twitter/library/provider/ar;->a(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;ZLcom/twitter/library/provider/b;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 230
    :catchall_0
    move-exception v2

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/library/provider/bh;->b:Lcom/twitter/library/provider/au;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/twitter/library/provider/au;->b(Lcom/twitter/library/provider/au;Z)Z

    .line 234
    return-void
.end method
