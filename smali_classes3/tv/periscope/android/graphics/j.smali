.class Ltv/periscope/android/graphics/j;
.super Ljava/lang/Thread;
.source "Twttr"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Ltv/periscope/android/graphics/i;

.field private t:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/periscope/android/graphics/GLRenderView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/periscope/android/graphics/GLRenderView;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1082
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/graphics/j;->q:Ljava/util/ArrayList;

    .line 1604
    iput-boolean v1, p0, Ltv/periscope/android/graphics/j;->r:Z

    .line 1083
    iput v2, p0, Ltv/periscope/android/graphics/j;->l:I

    .line 1084
    iput v2, p0, Ltv/periscope/android/graphics/j;->m:I

    .line 1085
    iput-boolean v1, p0, Ltv/periscope/android/graphics/j;->o:Z

    .line 1086
    iput v1, p0, Ltv/periscope/android/graphics/j;->n:I

    .line 1087
    iput-object p1, p0, Ltv/periscope/android/graphics/j;->t:Ljava/lang/ref/WeakReference;

    .line 1088
    return-void
.end method

.method static synthetic a(Ltv/periscope/android/graphics/j;Z)Z
    .locals 0

    .prologue
    .line 1080
    iput-boolean p1, p0, Ltv/periscope/android/graphics/j;->b:Z

    return p1
.end method

.method private g()V
    .locals 1

    .prologue
    .line 1111
    iget-boolean v0, p0, Ltv/periscope/android/graphics/j;->i:Z

    if-eqz v0, :cond_0

    .line 1112
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/graphics/j;->i:Z

    .line 1113
    iget-object v0, p0, Ltv/periscope/android/graphics/j;->s:Ltv/periscope/android/graphics/i;

    invoke-virtual {v0}, Ltv/periscope/android/graphics/i;->d()V

    .line 1115
    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 1122
    iget-boolean v0, p0, Ltv/periscope/android/graphics/j;->h:Z

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Ltv/periscope/android/graphics/j;->s:Ltv/periscope/android/graphics/i;

    invoke-virtual {v0}, Ltv/periscope/android/graphics/i;->e()V

    .line 1124
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/graphics/j;->h:Z

    .line 1125
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltv/periscope/android/graphics/k;->c(Ltv/periscope/android/graphics/j;)V

    .line 1127
    :cond_0
    return-void
.end method

.method private i()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1129
    new-instance v1, Ltv/periscope/android/graphics/i;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/periscope/android/graphics/j;->t:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ltv/periscope/android/graphics/i;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Ltv/periscope/android/graphics/j;->s:Ltv/periscope/android/graphics/i;

    .line 1130
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ltv/periscope/android/graphics/j;->h:Z

    .line 1131
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ltv/periscope/android/graphics/j;->i:Z

    .line 1133
    const/4 v10, 0x0

    .line 1134
    const/4 v5, 0x0

    .line 1135
    const/4 v3, 0x0

    .line 1136
    const/4 v4, 0x0

    .line 1137
    const/4 v9, 0x0

    .line 1138
    const/4 v8, 0x0

    .line 1139
    const/4 v2, 0x0

    .line 1140
    const/4 v7, 0x0

    .line 1141
    const/4 v6, 0x0

    .line 1142
    const/4 v1, 0x0

    move-object v12, v1

    move v15, v4

    move v4, v5

    move v5, v10

    move v10, v3

    move v3, v15

    .line 1145
    :goto_0
    :try_start_0
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1147
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ltv/periscope/android/graphics/j;->a:Z

    if-eqz v1, :cond_0

    .line 1148
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1407
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v2

    monitor-enter v2

    .line 1408
    :try_start_2
    invoke-direct/range {p0 .. p0}, Ltv/periscope/android/graphics/j;->g()V

    .line 1409
    invoke-direct/range {p0 .. p0}, Ltv/periscope/android/graphics/j;->h()V

    .line 1410
    monitor-exit v2

    .line 1148
    return-void

    .line 1410
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1151
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/periscope/android/graphics/j;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1152
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/periscope/android/graphics/j;->q:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    move v11, v9

    move v9, v7

    move-object v7, v1

    move v1, v5

    move v5, v4

    move v4, v3

    move v3, v10

    move v10, v2

    move v2, v8

    move v8, v6

    .line 1315
    :goto_2
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1317
    if-eqz v7, :cond_f

    .line 1318
    :try_start_4
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1319
    const/4 v6, 0x0

    move-object v12, v6

    move v7, v9

    move v6, v8

    move v9, v11

    move v8, v2

    move v2, v10

    move v10, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 1320
    goto :goto_0

    .line 1157
    :cond_1
    const/4 v1, 0x0

    .line 1158
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Ltv/periscope/android/graphics/j;->d:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Ltv/periscope/android/graphics/j;->c:Z

    if-eq v11, v14, :cond_1b

    .line 1159
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ltv/periscope/android/graphics/j;->c:Z

    .line 1160
    move-object/from16 v0, p0

    iget-boolean v11, v0, Ltv/periscope/android/graphics/j;->c:Z

    move-object/from16 v0, p0

    iput-boolean v11, v0, Ltv/periscope/android/graphics/j;->d:Z

    .line 1161
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    move v11, v1

    .line 1168
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ltv/periscope/android/graphics/j;->k:Z

    if-eqz v1, :cond_2

    .line 1172
    invoke-direct/range {p0 .. p0}, Ltv/periscope/android/graphics/j;->g()V

    .line 1173
    invoke-direct/range {p0 .. p0}, Ltv/periscope/android/graphics/j;->h()V

    .line 1174
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ltv/periscope/android/graphics/j;->k:Z

    .line 1175
    const/4 v2, 0x1

    .line 1179
    :cond_2
    if-eqz v10, :cond_3

    .line 1180
    invoke-direct/range {p0 .. p0}, Ltv/periscope/android/graphics/j;->g()V

    .line 1181
    invoke-direct/range {p0 .. p0}, Ltv/periscope/android/graphics/j;->h()V

    .line 1182
    const/4 v1, 0x0

    move v10, v1

    .line 1186
    :cond_3
    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ltv/periscope/android/graphics/j;->i:Z

    if-eqz v1, :cond_4

    .line 1190
    invoke-direct/range {p0 .. p0}, Ltv/periscope/android/graphics/j;->g()V

    .line 1194
    :cond_4
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ltv/periscope/android/graphics/j;->h:Z

    if-eqz v1, :cond_6

    .line 1195
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/periscope/android/graphics/j;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/periscope/android/graphics/GLRenderView;

    .line 1196
    if-nez v1, :cond_b

    const/4 v1, 0x0

    .line 1198
    :goto_4
    if-eqz v1, :cond_5

    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    invoke-virtual {v1}, Ltv/periscope/android/graphics/k;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1199
    :cond_5
    invoke-direct/range {p0 .. p0}, Ltv/periscope/android/graphics/j;->h()V

    .line 1207
    :cond_6
    if-eqz v11, :cond_7

    .line 1208
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    invoke-virtual {v1}, Ltv/periscope/android/graphics/k;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1209
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/periscope/android/graphics/j;->s:Ltv/periscope/android/graphics/i;

    invoke-virtual {v1}, Ltv/periscope/android/graphics/i;->e()V

    .line 1217
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ltv/periscope/android/graphics/j;->e:Z

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ltv/periscope/android/graphics/j;->g:Z

    if-nez v1, :cond_9

    .line 1221
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ltv/periscope/android/graphics/j;->i:Z

    if-eqz v1, :cond_8

    .line 1222
    invoke-direct/range {p0 .. p0}, Ltv/periscope/android/graphics/j;->g()V

    .line 1224
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ltv/periscope/android/graphics/j;->g:Z

    .line 1225
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ltv/periscope/android/graphics/j;->f:Z

    .line 1226
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1230
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ltv/periscope/android/graphics/j;->e:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ltv/periscope/android/graphics/j;->g:Z

    if-eqz v1, :cond_a

    .line 1234
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Ltv/periscope/android/graphics/j;->g:Z

    .line 1235
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1238
    :cond_a
    if-eqz v8, :cond_1a

    .line 1242
    const/4 v8, 0x0

    .line 1243
    const/4 v1, 0x0

    .line 1244
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Ltv/periscope/android/graphics/j;->p:Z

    .line 1245
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    move v9, v1

    .line 1249
    :goto_5
    invoke-direct/range {p0 .. p0}, Ltv/periscope/android/graphics/j;->j()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1252
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ltv/periscope/android/graphics/j;->h:Z

    if-nez v1, :cond_d

    .line 1253
    if-eqz v2, :cond_c

    .line 1254
    const/4 v2, 0x0

    move v1, v2

    .line 1269
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ltv/periscope/android/graphics/j;->h:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Ltv/periscope/android/graphics/j;->i:Z

    if-nez v2, :cond_18

    .line 1270
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ltv/periscope/android/graphics/j;->i:Z

    .line 1271
    const/4 v4, 0x1

    .line 1272
    const/4 v3, 0x1

    move v2, v3

    move v3, v4

    .line 1275
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ltv/periscope/android/graphics/j;->i:Z

    if-eqz v4, :cond_e

    .line 1276
    move-object/from16 v0, p0

    iget-boolean v4, v0, Ltv/periscope/android/graphics/j;->r:Z

    if-eqz v4, :cond_17

    .line 1277
    const/4 v6, 0x1

    .line 1278
    move-object/from16 v0, p0

    iget v3, v0, Ltv/periscope/android/graphics/j;->l:I

    .line 1279
    move-object/from16 v0, p0

    iget v2, v0, Ltv/periscope/android/graphics/j;->m:I

    .line 1280
    const/4 v4, 0x1

    .line 1288
    const/4 v7, 0x1

    .line 1290
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Ltv/periscope/android/graphics/j;->r:Z

    .line 1292
    :goto_8
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Ltv/periscope/android/graphics/j;->o:Z

    .line 1293
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    move v8, v2

    move v11, v4

    move v2, v9

    move v4, v6

    move v9, v3

    move v3, v10

    move v10, v1

    move v1, v5

    move v5, v7

    move-object v7, v12

    .line 1294
    goto/16 :goto_2

    .line 1197
    :cond_b
    invoke-static {v1}, Ltv/periscope/android/graphics/GLRenderView;->e(Ltv/periscope/android/graphics/GLRenderView;)Z

    move-result v1

    goto/16 :goto_4

    .line 1255
    :cond_c
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ltv/periscope/android/graphics/k;->b(Ltv/periscope/android/graphics/j;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v1

    if-eqz v1, :cond_d

    .line 1257
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/periscope/android/graphics/j;->s:Ltv/periscope/android/graphics/i;

    invoke-virtual {v1}, Ltv/periscope/android/graphics/i;->a()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1262
    const/4 v1, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v1, v0, Ltv/periscope/android/graphics/j;->h:Z

    .line 1263
    const/4 v5, 0x1

    .line 1265
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_d
    move v1, v2

    goto :goto_6

    .line 1258
    :catch_0
    move-exception v1

    .line 1259
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ltv/periscope/android/graphics/k;->c(Ltv/periscope/android/graphics/j;)V

    .line 1260
    throw v1

    .line 1315
    :catchall_1
    move-exception v1

    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1407
    :catchall_2
    move-exception v1

    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v2

    monitor-enter v2

    .line 1408
    :try_start_9
    invoke-direct/range {p0 .. p0}, Ltv/periscope/android/graphics/j;->g()V

    .line 1409
    invoke-direct/range {p0 .. p0}, Ltv/periscope/android/graphics/j;->h()V

    .line 1410
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v1

    :cond_e
    move v4, v5

    .line 1313
    :goto_9
    :try_start_a
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v15, v9

    move v9, v8

    move v8, v15

    .line 1314
    goto/16 :goto_1

    .line 1323
    :cond_f
    if-eqz v5, :cond_1c

    .line 1327
    :try_start_b
    move-object/from16 v0, p0

    iget-object v6, v0, Ltv/periscope/android/graphics/j;->s:Ltv/periscope/android/graphics/i;

    invoke-virtual {v6}, Ltv/periscope/android/graphics/i;->b()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1328
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v5

    monitor-enter v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1329
    const/4 v6, 0x1

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v6, v0, Ltv/periscope/android/graphics/j;->j:Z

    .line 1330
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1331
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1340
    const/4 v5, 0x0

    move v6, v5

    .line 1343
    :goto_a
    if-eqz v1, :cond_16

    .line 1347
    :try_start_d
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/periscope/android/graphics/j;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/periscope/android/graphics/GLRenderView;

    .line 1348
    if-eqz v1, :cond_10

    .line 1349
    invoke-static {v1}, Ltv/periscope/android/graphics/GLRenderView;->f(Ltv/periscope/android/graphics/GLRenderView;)Ltv/periscope/android/graphics/l;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Ltv/periscope/android/graphics/j;->s:Ltv/periscope/android/graphics/i;

    iget-object v5, v5, Ltv/periscope/android/graphics/i;->c:Landroid/opengl/EGLConfig;

    invoke-interface {v1, v5}, Ltv/periscope/android/graphics/l;->a(Landroid/opengl/EGLConfig;)V

    .line 1351
    :cond_10
    const/4 v1, 0x0

    move v5, v1

    .line 1354
    :goto_b
    if-eqz v4, :cond_12

    .line 1358
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/periscope/android/graphics/j;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/periscope/android/graphics/GLRenderView;

    .line 1359
    if-eqz v1, :cond_11

    .line 1360
    invoke-static {v1}, Ltv/periscope/android/graphics/GLRenderView;->f(Ltv/periscope/android/graphics/GLRenderView;)Ltv/periscope/android/graphics/l;

    move-result-object v1

    invoke-interface {v1, v9, v8}, Ltv/periscope/android/graphics/l;->a(II)V

    .line 1362
    :cond_11
    const/4 v1, 0x0

    move v4, v1

    .line 1369
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/periscope/android/graphics/j;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltv/periscope/android/graphics/GLRenderView;

    .line 1370
    if-eqz v1, :cond_13

    .line 1371
    invoke-static {v1}, Ltv/periscope/android/graphics/GLRenderView;->f(Ltv/periscope/android/graphics/GLRenderView;)Ltv/periscope/android/graphics/l;

    move-result-object v1

    invoke-interface {v1}, Ltv/periscope/android/graphics/l;->a()V

    .line 1374
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Ltv/periscope/android/graphics/j;->s:Ltv/periscope/android/graphics/i;

    invoke-virtual {v1}, Ltv/periscope/android/graphics/i;->c()I

    move-result v1

    .line 1375
    sparse-switch v1, :sswitch_data_0

    .line 1389
    const-string/jumbo v12, "GLThread"

    const-string/jumbo v13, "eglSwapBuffers"

    invoke-static {v12, v13, v1}, Ltv/periscope/android/graphics/i;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1391
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v12

    monitor-enter v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1392
    const/4 v1, 0x1

    :try_start_e
    move-object/from16 v0, p0

    iput-boolean v1, v0, Ltv/periscope/android/graphics/j;->f:Z

    .line 1393
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1394
    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1398
    :goto_c
    :sswitch_0
    if-eqz v11, :cond_15

    .line 1399
    const/4 v1, 0x1

    :goto_d
    move-object v12, v7

    move v2, v10

    move v7, v9

    move v10, v3

    move v9, v11

    move v3, v4

    move v4, v6

    move v6, v8

    move v8, v1

    .line 1401
    goto/16 :goto_0

    .line 1331
    :catchall_3
    move-exception v1

    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v1

    .line 1333
    :cond_14
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v6

    monitor-enter v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1334
    const/4 v12, 0x1

    :try_start_11
    move-object/from16 v0, p0

    iput-boolean v12, v0, Ltv/periscope/android/graphics/j;->j:Z

    .line 1335
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Ltv/periscope/android/graphics/j;->f:Z

    .line 1336
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1337
    monitor-exit v6

    move-object v12, v7

    move v6, v8

    move v7, v9

    move v8, v2

    move v2, v10

    move v9, v11

    move v10, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 1338
    goto/16 :goto_0

    .line 1337
    :catchall_4
    move-exception v1

    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1382
    :sswitch_1
    const/4 v1, 0x1

    move v3, v1

    .line 1383
    goto :goto_c

    .line 1394
    :catchall_5
    move-exception v1

    :try_start_13
    monitor-exit v12
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1410
    :catchall_6
    move-exception v1

    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    throw v1

    :cond_15
    move v1, v2

    goto :goto_d

    :cond_16
    move v5, v1

    goto/16 :goto_b

    :cond_17
    move v4, v8

    move v15, v7

    move v7, v3

    move v3, v15

    move/from16 v16, v2

    move v2, v6

    move/from16 v6, v16

    goto/16 :goto_8

    :cond_18
    move v2, v3

    move v3, v4

    goto/16 :goto_7

    :cond_19
    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_9

    :cond_1a
    move v15, v8

    move v8, v9

    move v9, v15

    goto/16 :goto_5

    :cond_1b
    move v11, v1

    goto/16 :goto_3

    :cond_1c
    move v6, v5

    goto/16 :goto_a

    .line 1375
    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private j()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1419
    iget-boolean v1, p0, Ltv/periscope/android/graphics/j;->d:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Ltv/periscope/android/graphics/j;->e:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Ltv/periscope/android/graphics/j;->f:Z

    if-nez v1, :cond_1

    iget v1, p0, Ltv/periscope/android/graphics/j;->l:I

    if-lez v1, :cond_1

    iget v1, p0, Ltv/periscope/android/graphics/j;->m:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Ltv/periscope/android/graphics/j;->o:Z

    if-nez v1, :cond_0

    iget v1, p0, Ltv/periscope/android/graphics/j;->n:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 1425
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1426
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1428
    :cond_1
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    monitor-enter v1

    .line 1429
    :try_start_0
    iput p1, p0, Ltv/periscope/android/graphics/j;->n:I

    .line 1430
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1431
    monitor-exit v1

    .line 1432
    return-void

    .line 1431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 1527
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    monitor-enter v1

    .line 1528
    :try_start_0
    iput p1, p0, Ltv/periscope/android/graphics/j;->l:I

    .line 1529
    iput p2, p0, Ltv/periscope/android/graphics/j;->m:I

    .line 1530
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/graphics/j;->r:Z

    .line 1531
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/graphics/j;->o:Z

    .line 1532
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/graphics/j;->p:Z

    .line 1533
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1536
    :goto_0
    iget-boolean v0, p0, Ltv/periscope/android/graphics/j;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltv/periscope/android/graphics/j;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltv/periscope/android/graphics/j;->p:Z

    if-nez v0, :cond_0

    .line 1537
    invoke-virtual {p0}, Ltv/periscope/android/graphics/j;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    :try_start_1
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1543
    :catch_0
    move-exception v0

    .line 1544
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1548
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1415
    iget-boolean v0, p0, Ltv/periscope/android/graphics/j;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/periscope/android/graphics/j;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ltv/periscope/android/graphics/j;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 1435
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    monitor-enter v1

    .line 1436
    :try_start_0
    iget v0, p0, Ltv/periscope/android/graphics/j;->n:I

    monitor-exit v1

    return v0

    .line 1437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 1448
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    monitor-enter v1

    .line 1452
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltv/periscope/android/graphics/j;->e:Z

    .line 1453
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/graphics/j;->j:Z

    .line 1454
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1455
    :goto_0
    iget-boolean v0, p0, Ltv/periscope/android/graphics/j;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltv/periscope/android/graphics/j;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltv/periscope/android/graphics/j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1459
    :try_start_1
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1460
    :catch_0
    move-exception v0

    .line 1461
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1464
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1465
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 1468
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    monitor-enter v1

    .line 1472
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ltv/periscope/android/graphics/j;->e:Z

    .line 1473
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1474
    :goto_0
    iget-boolean v0, p0, Ltv/periscope/android/graphics/j;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltv/periscope/android/graphics/j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1476
    :try_start_1
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1482
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 1553
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    monitor-enter v1

    .line 1554
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ltv/periscope/android/graphics/j;->a:Z

    .line 1555
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1556
    :goto_0
    iget-boolean v0, p0, Ltv/periscope/android/graphics/j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1558
    :try_start_1
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1559
    :catch_0
    move-exception v0

    .line 1560
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1564
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 1567
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/graphics/j;->k:Z

    .line 1568
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1569
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ltv/periscope/android/graphics/j;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltv/periscope/android/graphics/j;->setName(Ljava/lang/String;)V

    .line 1098
    :try_start_0
    invoke-direct {p0}, Ltv/periscope/android/graphics/j;->i()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltv/periscope/android/graphics/k;->a(Ltv/periscope/android/graphics/j;)V

    .line 1104
    :goto_0
    return-void

    .line 1099
    :catch_0
    move-exception v0

    .line 1102
    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltv/periscope/android/graphics/k;->a(Ltv/periscope/android/graphics/j;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Ltv/periscope/android/graphics/GLRenderView;->a()Ltv/periscope/android/graphics/k;

    move-result-object v1

    invoke-virtual {v1, p0}, Ltv/periscope/android/graphics/k;->a(Ltv/periscope/android/graphics/j;)V

    throw v0
.end method
