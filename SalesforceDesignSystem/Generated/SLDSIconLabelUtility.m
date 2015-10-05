/*
 Copyright (c) 2015, salesforce.com, inc. All rights reserved.
 Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 Neither the name of salesforce.com, inc. nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#import "SLDSIconLabelUtility.h"

#define iconName(enum) [@[\
@"SLDSIconUtilityAdd",\
@"SLDSIconUtilityAdduser",\
@"SLDSIconUtilityAnnouncement",\
@"SLDSIconUtilityApps",\
@"SLDSIconUtilityArrowdown",\
@"SLDSIconUtilityArrowup",\
@"SLDSIconUtilityAttach",\
@"SLDSIconUtilityBack",\
@"SLDSIconUtilityBan",\
@"SLDSIconUtilityBold",\
@"SLDSIconUtilityBookmark",\
@"SLDSIconUtilityBrush",\
@"SLDSIconUtilityBucket",\
@"SLDSIconUtilityBuilder",\
@"SLDSIconUtilityCall",\
@"SLDSIconUtilityCapslock",\
@"SLDSIconUtilityCases",\
@"SLDSIconUtilityCenterAlignText",\
@"SLDSIconUtilityChart",\
@"SLDSIconUtilityChat",\
@"SLDSIconUtilityCheck",\
@"SLDSIconUtilityCheckin",\
@"SLDSIconUtilityChevrondown",\
@"SLDSIconUtilityChevronleft",\
@"SLDSIconUtilityChevronright",\
@"SLDSIconUtilityChevronup",\
@"SLDSIconUtilityClear",\
@"SLDSIconUtilityClock",\
@"SLDSIconUtilityClose",\
@"SLDSIconUtilityComments",\
@"SLDSIconUtilityCompany",\
@"SLDSIconUtilityConnectedApps",\
@"SLDSIconUtilityContract",\
@"SLDSIconUtilityCopy",\
@"SLDSIconUtilityCrossfilter",\
@"SLDSIconUtilityCustomApps",\
@"SLDSIconUtilityCut",\
@"SLDSIconUtilityDash",\
@"SLDSIconUtilityDayview",\
@"SLDSIconUtilityDelete",\
@"SLDSIconUtilityDeprecate",\
@"SLDSIconUtilityDesktop",\
@"SLDSIconUtilityDown",\
@"SLDSIconUtilityDownload",\
@"SLDSIconUtilityEdit",\
@"SLDSIconUtilityEmail",\
@"SLDSIconUtilityError",\
@"SLDSIconUtilityEvent",\
@"SLDSIconUtilityExpand",\
@"SLDSIconUtilityFavorite",\
@"SLDSIconUtilityFilter",\
@"SLDSIconUtilityFilterlist",\
@"SLDSIconUtilityForward",\
@"SLDSIconUtilityFrozen",\
@"SLDSIconUtilityGroups",\
@"SLDSIconUtilityHelp",\
@"SLDSIconUtilityHome",\
@"SLDSIconUtilityIdentity",\
@"SLDSIconUtilityImage",\
@"SLDSIconUtilityInbox",\
@"SLDSIconUtilityInfo",\
@"SLDSIconUtilityInsertTagField",\
@"SLDSIconUtilityInsertTemplate",\
@"SLDSIconUtilityItalic",\
@"SLDSIconUtilityJustifyText",\
@"SLDSIconUtilityKanban",\
@"SLDSIconUtilityKnowledgeBase",\
@"SLDSIconUtilityLayout",\
@"SLDSIconUtilityLeft",\
@"SLDSIconUtilityLeftAlignText",\
@"SLDSIconUtilityLike",\
@"SLDSIconUtilityLink",\
@"SLDSIconUtilityList",\
@"SLDSIconUtilityLocation",\
@"SLDSIconUtilityLock",\
@"SLDSIconUtilityLogout",\
@"SLDSIconUtilityMagicwand",\
@"SLDSIconUtilityMatrix",\
@"SLDSIconUtilityMonthlyview",\
@"SLDSIconUtilityMove",\
@"SLDSIconUtilityNew",\
@"SLDSIconUtilityNewWindow",\
@"SLDSIconUtilityNews",\
@"SLDSIconUtilityNotebook",\
@"SLDSIconUtilityNotification",\
@"SLDSIconUtilityOffice365",\
@"SLDSIconUtilityOffline",\
@"SLDSIconUtilityOpen",\
@"SLDSIconUtilityOpenFolder",\
@"SLDSIconUtilityOpenedFolder",\
@"SLDSIconUtilityPackage",\
@"SLDSIconUtilityPackageOrg",\
@"SLDSIconUtilityPackageOrgBeta",\
@"SLDSIconUtilityPage",\
@"SLDSIconUtilityPalette",\
@"SLDSIconUtilityPaste",\
@"SLDSIconUtilityPeople",\
@"SLDSIconUtilityPhoneLandscape",\
@"SLDSIconUtilityPhonePortrait",\
@"SLDSIconUtilityPhoto",\
@"SLDSIconUtilityPower",\
@"SLDSIconUtilityPreview",\
@"SLDSIconUtilityPriority",\
@"SLDSIconUtilityProcess",\
@"SLDSIconUtilityPush",\
@"SLDSIconUtilityPuzzle",\
@"SLDSIconUtilityQuestion",\
@"SLDSIconUtilityQuestionsAndAnswers",\
@"SLDSIconUtilityRedo",\
@"SLDSIconUtilityRefresh",\
@"SLDSIconUtilityRelate",\
@"SLDSIconUtilityRemoveFormatting",\
@"SLDSIconUtilityRemoveLink",\
@"SLDSIconUtilityReplace",\
@"SLDSIconUtilityReply",\
@"SLDSIconUtilityRetweet",\
@"SLDSIconUtilityRichtextbulletedlist",\
@"SLDSIconUtilityRichtextindent",\
@"SLDSIconUtilityRichtextnumberedlist",\
@"SLDSIconUtilityRichtextoutdent",\
@"SLDSIconUtilityRight",\
@"SLDSIconUtilityRightAlignText",\
@"SLDSIconUtilityRotate",\
@"SLDSIconUtilityRows",\
@"SLDSIconUtilitySalesforce1",\
@"SLDSIconUtilitySearch",\
@"SLDSIconUtilitySettings",\
@"SLDSIconUtilitySetup",\
@"SLDSIconUtilitySetupAssistantGuide",\
@"SLDSIconUtilityShare",\
@"SLDSIconUtilityShield",\
@"SLDSIconUtilitySideList",\
@"SLDSIconUtilitySignpost",\
@"SLDSIconUtilitySms",\
@"SLDSIconUtilitySnippet",\
@"SLDSIconUtilitySocialshare",\
@"SLDSIconUtilitySort",\
@"SLDSIconUtilitySpinner",\
@"SLDSIconUtilityStandardObjects",\
@"SLDSIconUtilityStrikethrough",\
@"SLDSIconUtilitySuccess",\
@"SLDSIconUtilitySummary",\
@"SLDSIconUtilitySummarydetail",\
@"SLDSIconUtilitySwitch",\
@"SLDSIconUtilityTable",\
@"SLDSIconUtilityTabletLandscape",\
@"SLDSIconUtilityTabletPortrait",\
@"SLDSIconUtilityTextBackgroundColor",\
@"SLDSIconUtilityTextColor",\
@"SLDSIconUtilityThreedots",\
@"SLDSIconUtilityTileCardList",\
@"SLDSIconUtilityTopic",\
@"SLDSIconUtilityTrail",\
@"SLDSIconUtilityUndelete",\
@"SLDSIconUtilityUndeprecate",\
@"SLDSIconUtilityUnderline",\
@"SLDSIconUtilityUndo",\
@"SLDSIconUtilityUnlock",\
@"SLDSIconUtilityUp",\
@"SLDSIconUtilityUpload",\
@"SLDSIconUtilityUser",\
@"SLDSIconUtilityWarning",\
@"SLDSIconUtilityWeeklyview",\
@"SLDSIconUtilityZoomin",\
@"SLDSIconUtilityZoomout" \
] objectAtIndex:enum]

@implementation SLDSIconLabelUtility

+ (NSString *)sldsIconName:(SLDSIconUtilType)icon{
    return iconName(icon);
}

@end

